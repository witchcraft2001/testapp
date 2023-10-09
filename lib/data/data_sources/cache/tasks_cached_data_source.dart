// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/task_response.dart';

abstract class TasksCachedDataSource {
  Future<List<TaskResponse>> getTasks(String? search);

  Future<void> setStatus({
    required String id,
    required int actionId,
    required String actionResult,
    required String? comment,
    required String method,
    required String url,
  });

  void clearCacheTasks();
}

@LazySingleton(as: TasksCachedDataSource, env: [Environment.dev, Environment.prod])
class TasksCachedDataSourceImpl extends TasksCachedDataSource {
  final TasksRemoteDataSource _tasksRepository;
  DateTime? _lastUpdates;

  var lock = Lock();

  final List<TaskResponse> items = List.empty(growable: true);

  final List<String> searchFields = ['initiator'];

  TasksCachedDataSourceImpl(this._tasksRepository);

  @override
  Future<List<TaskResponse>> getTasks(String? search) async {
    if (items.isEmpty && _lastUpdates == null) {
      await lock.synchronized(() async {
        if (items.isEmpty && _lastUpdates == null) {
          items.addAll(await _tasksRepository.getAll());
          _lastUpdates = DateTime.now();
        }
      });
    }
    if (search != null && search.isNotEmpty) {
      final lowCase = search.toLowerCase();

      return items
          .where((element) =>
              element.id.toLowerCase().contains(lowCase) ||
              element.blocks.any((block) => block.data.any((data) =>
                  searchFields.contains(data.id.toLowerCase()) &&
                  data.value.toLowerCase().contains(lowCase))))
          .toList();
    } else {
      return items;
    }
  }

  @override
  Future<void> setStatus({
    required String id,
    required int actionId,
    required String actionResult,
    required String? comment,
    required String method,
    required String url,
  }) async {
    if (items.isEmpty) return;
    try {
      items.removeWhere((element) => element.id == id);
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  void clearCacheTasks() {
    items.clear();
    _lastUpdates = null;
  }
}
