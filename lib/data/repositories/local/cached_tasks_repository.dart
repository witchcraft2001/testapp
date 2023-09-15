// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/task_response.dart';
import 'package:terralinkapp/data/repositories/tasks_repository.dart';

abstract class CachedTasksRepository {
  Future<List<TaskResponse>> getTasks(String? search);

  Future setStatus(String id, int actionId, String actionResult, String? comment, String method, String url);

  void clearCacheTasks();
}

@LazySingleton(as: CachedTasksRepository, env: [Environment.dev, Environment.prod])
class CachedTasksRepositoryImpl extends CachedTasksRepository {
  final TasksRepository _tasksRepository;
  var lock = Lock();

  final List<TaskResponse> items = List.empty(growable: true);

  final List<String> searchFields = ['initiator'];

  CachedTasksRepositoryImpl(this._tasksRepository);

  @override
  Future<List<TaskResponse>> getTasks(String? search) async {
    if (items.isEmpty) {
      await lock.synchronized(() async {
        if (items.isEmpty) {
          items.addAll(await _tasksRepository.getAll());
        }
      });
    }
    if (search != null && search.isNotEmpty) {
      final lowCase = search.toLowerCase();
      
      return items
          .where((element) =>
              element.id.toLowerCase().contains(lowCase) ||
              element.blocks
                  .any((block) => block.data.any((data) => searchFields.contains(data.id.toLowerCase()) && data.value.toLowerCase().contains(lowCase))))
          .toList();
    } else {
      return items;
    }
  }

  @override
  Future setStatus(
    String id,
    int actionId,
    String actionResult,
    String? comment,
    String method,
    String url,
  ) async {
    if (items.isEmpty) return;
    try {
      items.removeWhere((element) => element.id == id);
      // await _tasksRepository.setStatus(actionId, actionResult, comment, method, url);
    } catch (e, _) {
      rethrow;
    }
    // final excluded = items.where((element) => element.id != id);
    // items.clear();
    // items.addAll(excluded);
  }

  @override
  void clearCacheTasks() {
    items.clear();
  }
}
