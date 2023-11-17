// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/remote/tasks_vacation_remote_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_vacation/api_task_vacation_dao.dart';

abstract class TasksVacationCachedDataSource {
  Stream<int> stream = const Stream.empty();

  Future<List<ApiTaskVacationDao>> get(String? search);
  Future<void> completeTask(String id);
  void clearCache();
}

@LazySingleton(
  as: TasksVacationCachedDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksEasCachedDataSourceImpl extends TasksVacationCachedDataSource {
  final TasksVacationRemoteDataSource _tasksRepository;
  final List<ApiTaskVacationDao> _tasks = List.empty(growable: true);
  final Lock _lock = Lock();
  final List<String> _searchFields = ['employee'];
  DateTime? _lastUpdates;

  TasksEasCachedDataSourceImpl(this._tasksRepository);

  final _tasksStreamController = StreamController<int>.broadcast();

  @override
  Stream<int> get stream => _tasksStreamController.stream;

  @override
  Future<List<ApiTaskVacationDao>> get(String? search) async {
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
                  data.value != null &&
                  data.value!.toLowerCase().contains(lowCase))))
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
