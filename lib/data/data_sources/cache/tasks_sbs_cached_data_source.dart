// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/iterable_extensions.dart';
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_consultant_record/api_task_sbs_consultant_record_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_register_record/api_task_sbs_register_record_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';

abstract class TasksSBSCachedDataSource {
  Future<List<ApiTaskSBSDao>> get(String? search);

  Future<void> completeTask(List<AppTaskSBSRecord> records);

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
  Future<void> completeTask(List<AppTaskSBSRecord> records) async {
    if (_tasks.isEmpty || records.isEmpty) return;

    try {
      // Определение задачи-проекта, для которой выполняется согласование часов
      ApiTaskSBSDao cachedTask =
          _tasks.firstWhere((task) => task.projectSbsId == records.first.projectId);
      final indexCachedTask = _tasks.indexOf(cachedTask);

      // Формирование списка записей сотрудников, по часам которых принято завершающее решение ("Согласовано" или "Отклонено")
      final consultants = <ApiTaskSBSConsultantRecordDao>[];

      for (final consultant in cachedTask.consultantsWithRecords) {
        final registerRecords = _getNotCompletedRecords(records, consultant.registerRecords);
        final updatedConsultant = consultant.copyWith(registerRecords: registerRecords);

        consultants.add(updatedConsultant);
      }

      // Обновление данных задачи
      cachedTask = cachedTask.copyWith(consultantsWithRecords: consultants);

      // Обновление данных задач
      _tasks.replaceRange(indexCachedTask, indexCachedTask + 1, [cachedTask]);
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  void clearCache() {
    _tasks.clear();
    _lastUpdates = null;
  }

  List<ApiTaskSBSRegisterRecordDao> _getNotCompletedRecords(
    List<AppTaskSBSRecord> appRecords,
    List<ApiTaskSBSRegisterRecordDao> apiRecords,
  ) {
    final api = [...apiRecords];

    // Получение всех записей, для которых пользователь не определился с решением
    for (final appRecord in appRecords) {
      final apiRecord =
          apiRecords.firstWhereOrNull((record) => record.recordID == appRecord.recordId);

      if (apiRecord != null) {
        api.remove(apiRecord);
      }
    }

    return api;
  }
}
