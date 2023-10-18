// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/models/requests/api_tasks_sbs_result/api_tasks_sbs_result.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_register_record/api_task_sbs_register_record_dao.dart';

abstract class TasksSBSCachedDataSource {
  Future<List<ApiTaskSBSDao>> get(String? search);

  Future<void> completeTask(List<ApiTasksSBSResult> records);

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

  List<ApiTaskSBSDao> _tasks = List.empty(growable: true);
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
  Future<void> completeTask(List<ApiTasksSBSResult> records) async {
    if (_tasks.isEmpty) return;

    try {
      // ToDo 57 удалять записи по которым вынесено решение Сошласовано или Отклонено в разрезе задачи

      final updatedTasks = _tasks.map((cachedTask) {
        return cachedTask.copyWith(
          consultantsWithRecords: cachedTask.consultantsWithRecords.map((consultant) {
            return consultant.copyWith(
              registerRecords: consultant.registerRecords
                  .map((record) {
                    final result = records.firstWhere((element) => record.recordID == element.id);

                    if (result.result != null) return null;

                    return record;
                  })
                  .whereType<ApiTaskSBSRegisterRecordDao>()
                  .toList(),
            );
          }).toList(),
        );
      }).toList();

      _tasks = updatedTasks;
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
