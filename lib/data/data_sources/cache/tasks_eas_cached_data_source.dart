// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_dao.dart';

abstract class TasksEASCachedDataSource {
  Future<List<ApiTaskEASDao>> get(String? search);

  Future<void> completeTask({
    required String id,
    required int actionId,
    required String actionResult,
    required String? comment,
    required String method,
    required String url,
  });

  void clearCache();
}

@LazySingleton(
  as: TasksEASCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksEASCachedDataSourceImpl extends TasksEASCachedDataSource {
  final TasksEASRemoteDataSource _tasksRepository;
  DateTime? _lastUpdates;

  var lock = Lock();

  final List<ApiTaskEASDao> _tasks = List.empty(growable: true);
  final List<String> _searchFields = ['initiator'];

  TasksEASCachedDataSourceImpl(this._tasksRepository);

  @override
  Future<List<ApiTaskEASDao>> get(String? search) async {
    if (_tasks.isEmpty && _lastUpdates == null) {
      await lock.synchronized(() async {
        if (_tasks.isEmpty && _lastUpdates == null) {
          _tasks.addAll(await _tasksRepository.getAll());
          _lastUpdates = DateTime.now();
        }
      });
    }
    if (search != null && search.isNotEmpty) {
      final lowCase = search.toLowerCase();

      return _tasks
          .where((element) =>
              element.id.toLowerCase().contains(lowCase) ||
              element.blocks.any((block) => block.data.any((data) =>
                  _searchFields.contains(data.id.toLowerCase()) &&
                  data.value.toLowerCase().contains(lowCase))))
          .toList();
    } else {
      return _tasks;
    }
  }

  @override
  Future<void> completeTask({
    required String id,
    required int actionId,
    required String actionResult,
    required String? comment,
    required String method,
    required String url,
  }) async {
    if (_tasks.isEmpty) return;
    try {
      _tasks.removeWhere((element) => element.id == id);
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
