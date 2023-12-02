// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/iterable_extensions.dart';
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs_weekly/api_task_sbs_weekly_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_late/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_consultant.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_record.dart';
import 'package:terralinkapp/domain/entities/api_task_summary/api_tasks_summary_system.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';

abstract class TasksSbsCachedDataSource {
  Stream<Map<ApiTasksSummarySystem, int>> get stream;

  Future<List<ApiTaskSbsWeekly>> getWeeklyRecords(String? search);
  Future<List<ApiTaskSbsLateDao>> getLateRecords(String? search);

  Future<void> completeWeeklyTask(ApiTaskSbsWeekly task);
  Future<void> completeLateRecords(List<ApiTaskSbsLate> tasks);

  void clearCacheWeekly();
  void clearCacheLate();
}

@LazySingleton(
  as: TasksSbsCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksSbsCachedDataSourceImpl extends TasksSbsCachedDataSource {
  final TasksSbsRemoteDataSource _tasksRepository;
  final Lock _lock = Lock();

  final List<ApiTaskSbsWeekly> _tasksWeekly = List.empty(growable: true);
  DateTime? _lastWeeklyUpdates;

  final List<ApiTaskSbsLateDao> _tasksLate = List.empty(growable: true);
  DateTime? _lastLateUpdates;

  TasksSbsCachedDataSourceImpl(this._tasksRepository);

  final _tasksStreamController = StreamController<Map<ApiTasksSummarySystem, int>>.broadcast();

  @override
  Stream<Map<ApiTasksSummarySystem, int>> get stream => _tasksStreamController.stream;

  @override
  Future<List<ApiTaskSbsWeekly>> getWeeklyRecords(String? search) async {
    if (_tasksWeekly.isEmpty && _lastWeeklyUpdates == null) {
      await _lock.synchronized(() async {
        if (_tasksWeekly.isEmpty && _lastWeeklyUpdates == null) {
          final tasks = await _tasksRepository.getWeeklyRecords();
          final tasksDelegated = await _tasksRepository.getWeeklyRecords(isDelegated: true);

          _tasksWeekly.addAll(tasks.map((task) => task.toDomain()));
          _tasksWeekly.addAll(tasksDelegated.map((task) => task.toDomain(isDelegated: true)));

          _lastWeeklyUpdates = DateTime.now();

          // Отправка значения в стрим для обновления счетчика на TasksSummaryScreen
          _sendWeeklyLength();
        }
      });
    }

    if (search != null && search.isNotEmpty) {
      final lowCase = search.toLowerCase();

      return _tasksWeekly
          .where((element) => element.projectId.toString().contains(lowCase))
          .toList();
    } else {
      return _tasksWeekly;
    }
  }

  @override
  Future<List<ApiTaskSbsLateDao>> getLateRecords(String? search) async {
    if (_tasksLate.isEmpty && _lastLateUpdates == null) {
      await _lock.synchronized(() async {
        if (_tasksLate.isEmpty && _lastLateUpdates == null) {
          _tasksLate.addAll(await _tasksRepository.getLateRecords());
          _lastLateUpdates = DateTime.now();

          // Отправка значения в стрим для обновления счетчика на TasksSummaryScreen
          _sendLateLength();
        }
      });
    }

    if (search != null && search.isNotEmpty) {
      final lowCase = search.toLowerCase();

      return _tasksLate.where((element) => element.projectId.toString().contains(lowCase)).toList();
    } else {
      return _tasksLate;
    }
  }

  @override
  Future<void> completeWeeklyTask(ApiTaskSbsWeekly task) async {
    if (_tasksWeekly.isEmpty || task.consultants.isEmpty) return;

    try {
      // Определение задачи-проекта, для которой выполняется согласование часов
      ApiTaskSbsWeekly? cacheTask =
          _tasksWeekly.firstWhereOrNull((t) => t.projectId == task.projectId);

      if (cacheTask != null) {
        final indexCachedTask = _tasksWeekly.indexOf(cacheTask);

        // Формирование списка записей сотрудников, по часам которых принято завершающее решение ("Согласовано" или "Отклонено")
        final consultants = <ApiTaskSbsWeeklyConsultant>[];

        for (final consultant in task.consultants) {
          List<ApiTaskSbsWeeklyRecord> records = [];

          if (consultant.result == AppTaskSbsResultType.rejected ||
              consultant.result == AppTaskSbsResultType.approved) {
            records = [];
          }

          if (consultant.result == AppTaskSbsResultType.waiting) {
            records = consultant.records;
          }

          if (consultant.result == AppTaskSbsResultType.none) {
            records = consultant.records
                .where((record) => record.result == AppTaskSbsResultType.waiting)
                .toList();
          }

          if (records.isNotEmpty) {
            final isWaiting =
                records.every((record) => record.result == AppTaskSbsResultType.waiting);

            consultants.add(consultant.copyWith(
              records: records,
              result: isWaiting ? AppTaskSbsResultType.waiting : null,
            ));
          }
        }

        // Если для всех консультантов согласованы все часы, то удаление задачи-проекта из списка
        if (consultants.isEmpty) {
          _tasksWeekly.removeWhere((task) => task.projectId == cacheTask!.projectId);
        }

        // Если нет, то отображение оставшихся
        if (consultants.isNotEmpty) {
          // Обновление данных задачи-проекта
          cacheTask = cacheTask.copyWith(consultants: consultants);

          // Обновление данных всех задач-проектов
          _tasksWeekly.replaceRange(indexCachedTask, indexCachedTask + 1, [cacheTask]);
        }

        // Отправка значения в стрим для обновления счетчика на TasksSummaryScreen
        _sendWeeklyLength();
      }
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  Future<void> completeLateRecords(List<ApiTaskSbsLate> tasks) async {
    if (_tasksLate.isEmpty) return;

    try {
      for (final task in tasks) {
        if (task.result != AppTaskSbsResultType.waiting) {
          _tasksLate.removeWhere((t) => t.recordId == task.recordId);

          // Отправка значения в стрим для обновления счетчика на TasksSummaryScreen
          _sendLateLength();
        }
      }
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  void clearCacheWeekly() {
    _tasksWeekly.clear();
    _lastWeeklyUpdates = null;
  }

  @override
  void clearCacheLate() {
    _tasksLate.clear();
    _lastLateUpdates = null;
  }

  void dispose() {
    _tasksStreamController.close();
  }

  void _sendWeeklyLength() {
    _tasksStreamController.add({
      ApiTasksSummarySystem.sbsWeekly: _tasksWeekly.length,
    });
  }

  void _sendLateLength() {
    final length = _tasksLate.map((task) => task.projectId).toSet().length;

    _tasksStreamController.add({
      ApiTasksSummarySystem.sbsLate: length,
    });
  }
}
