// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_dao.dart';
import 'package:terralinkapp/presentation/screens/tasks/eas/data/use_cases/attachments/remove_not_actual_task_eas_attachments_use_case.dart';

abstract class TasksEasCachedDataSource {
  Stream<int> get stream;

  Future<List<ApiTaskEasDao>> get(String? search);
  Future<void> completeTask(String id);
  void clearCache();
}

@LazySingleton(
  as: TasksEasCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksEasCachedDataSourceImpl extends TasksEasCachedDataSource {
  final TasksEasRemoteDataSource _remoteDataSource;
  final RemoveNotActualTaskEasAttachmentsUseCase _removeAttachmentsUseCase;

  final List<ApiTaskEasDao> _tasks = List.empty(growable: true);
  final Lock _lock = Lock();

  final List<String> _searchFields = ['initiator'];
  DateTime? _lastUpdates;

  TasksEasCachedDataSourceImpl(
    this._remoteDataSource,
    this._removeAttachmentsUseCase,
  );

  final _tasksStreamController = StreamController<int>.broadcast();

  @override
  Stream<int> get stream => _tasksStreamController.stream;

  @override
  Future<List<ApiTaskEasDao>> get(String? search) async {
    if (_tasks.isEmpty && _lastUpdates == null) {
      await _lock.synchronized(() async {
        if (_tasks.isEmpty && _lastUpdates == null) {
          final tasks = await _remoteDataSource.getAll();

          _tasks.addAll(tasks);
          _lastUpdates = DateTime.now();
          _sendTasksLength();

          if (tasks.isNotEmpty) {
            await _removeAttachmentsUseCase.run(tasks.map((task) => task.id).toSet());
          }
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
  Future<void> completeTask(String id) async {
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

  void dispose() {
    _tasksStreamController.close();
  }

  void _sendTasksLength() {
    _tasksStreamController.add(_tasks.length);
  }
}
