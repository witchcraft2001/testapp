// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_dao.dart';

abstract class TasksEasCachedDataSource {
  Stream<int> stream = const Stream.empty();

  Future<List<ApiTaskEasDao>> get(String? search);

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
  as: TasksEasCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksEasCachedDataSourceImpl extends TasksEasCachedDataSource {
  final TasksEasRemoteDataSource _tasksRepository;
  final List<ApiTaskEasDao> _tasks = List.empty(growable: true);
  final Lock _lock = Lock();
  final List<String> _searchFields = ['initiator'];
  DateTime? _lastUpdates;

  TasksEasCachedDataSourceImpl(this._tasksRepository);

  final _tasksStreamController = StreamController<int>();

  @override
  Stream<int> get stream => _tasksStreamController.stream;

  @override
  Future<List<ApiTaskEasDao>> get(String? search) async {
    if (_tasks.isEmpty && _lastUpdates == null) {
      await _lock.synchronized(() async {
        if (_tasks.isEmpty && _lastUpdates == null) {
          _tasks.addAll(await _tasksRepository.getAll());
          _lastUpdates = DateTime.now();

          _sendTasksLength();
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
                  data.value.isNotEmpty &&
                  data.value.first.name.toLowerCase().contains(lowCase))))
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

      _sendTasksLength();
    } catch (e, _) {
      rethrow;
    }
  }

  @override
  void clearCache() {
    _tasks.clear();
    _lastUpdates = null;
  }

  void _sendTasksLength() {
    _tasksStreamController.add(_tasks.length);
  }

  void dispose() {
    _tasksStreamController.close();
  }
}
