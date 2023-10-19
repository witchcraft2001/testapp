// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/iterable_extensions.dart';
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/mappers/tasks_sbs/app_task_sbs_consultant_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_consultant/api_task_sbs_consultant_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

abstract class TasksSBSCachedDataSource {
  Future<List<ApiTaskSBSDao>> get(String? search);

  Future<void> completeTask(AppTaskSBS task);

  void clearCache();
}

@LazySingleton(
  as: TasksSBSCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksSBSCachedDataSourceImpl extends TasksSBSCachedDataSource {
  final TasksSBSRemoteDataSource _tasksRepository;
  DateTime? _lastUpdates;

  var lock = Lock();

  final List<ApiTaskSBSDao> _tasks = List.empty(growable: true);
  // final List<String> _searchFields = [];

  TasksSBSCachedDataSourceImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskSBSDao>> get(String? search) async {
    if (_tasks.isEmpty && _lastUpdates == null) {
      await lock.synchronized(() async {
        if (_tasks.isEmpty && _lastUpdates == null) {
          _tasks.addAll(await _tasksRepository.getAll());
          _lastUpdates = DateTime.now();
        }
      });
    }

    // ToDo 57 определиться по каким полям будем искать
    // if (search != null && search.isNotEmpty) {
    //   final lowCase = search.toLowerCase();

    //   return _tasks;
    // }

    return _tasks;
  }

  @override
  Future<void> completeTask(AppTaskSBS task) async {
    if (_tasks.isEmpty || task.consultants.isEmpty) return;

    try {
      // Определение задачи-проекта, для которой выполняется согласование часов
      ApiTaskSBSDao? cacheTask = _tasks.firstWhereOrNull((t) => t.projectSbsId == task.projectId);

      if (cacheTask != null) {
        final indexCachedTask = _tasks.indexOf(cacheTask);

        // Формирование списка записей сотрудников, по часам которых принято завершающее решение ("Согласовано" или "Отклонено")

        final consultants = <ApiTaskSBSConsultantDao>[];

        for (final consultant in task.consultants) {
          List<AppTaskSBSRecord> records = [];

          if (consultant.result == AppTaskSBSResultType.rejected ||
              consultant.result == AppTaskSBSResultType.approved) {
            records = [];
          }

          if (consultant.result == AppTaskSBSResultType.waiting) {
            records = consultant.records;
          }

          if (consultant.result == AppTaskSBSResultType.none) {
            records = consultant.records
                .where((record) => record.result != AppTaskSBSResultType.waiting)
                .toList();
          }

          if (records.isNotEmpty) {
            consultants.add(consultant.copyWith(records: records).toDao());
          }
        }

        // Если для всех консультантов согласованы все часы, то удаление задачи-проекта из списка
        if (consultants.isEmpty) {
          _tasks.remove(cacheTask);
        }

        // Если нет, то отображение оставшихся
        if (consultants.isNotEmpty) {
          // Обновление данных задачи-проекта
          cacheTask = cacheTask.copyWith(consultantsWithRecords: consultants);

          // Обновление данных всех задач-проектов
          _tasks.replaceRange(indexCachedTask, indexCachedTask + 1, [cacheTask]);
        }
      }
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  void clearCache() {
    _tasks.clear();
    _lastUpdates = null;
  }
}
