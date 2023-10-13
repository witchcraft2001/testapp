// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_sbs_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';

abstract class TasksSBSCachedDataSource {
  Future<List<ApiTaskSBSDao>> get(String? search);

  Future<void> completeTask();

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
  Future<void> completeTask() async {}

  @override
  void clearCache() {
    _tasks.clear();
    _lastUpdates = null;
  }
}
