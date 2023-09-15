// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/api_routes.dart';
import 'package:terralinkapp/data/models/responses/task_response.dart';
import 'package:terralinkapp/data/models/responses/tasks_response.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/tasks_api_service.dart';

abstract class TasksRepository {
  Future<List<TaskResponse>> getAll();

  Future setStatus(int actionId, String actionResult, String? comment, String method, String url);
}

@LazySingleton(as: TasksRepository, env: [Environment.dev, Environment.prod])
class TasksRepositoryImpl extends TasksRepository {
  final TasksApiService _tasksService;

  TasksRepositoryImpl(this._tasksService);

  @override
  Future<List<TaskResponse>> getAll() async {
    try {
      final result = await _tasksService.request(
        url: ApiRoutes.tasks,
        method: Method.GET,
      );

      if (result.statusCode == 200) {
        return TasksResponse.fromMappedJson(result.data).results;
      } else {
        throw RepositoryException('Failed to load');
      }
    } on DioError catch (e) {
      if (e.response == null) {
        rethrow;
      } else {
        throw RepositoryException(e.message, statusCode: e.response?.statusCode);
      }
    }
  }

  @override
  Future<bool> setStatus(
    int actionId,
    String actionResult,
    String? comment,
    String method,
    String url,
  ) async {
    try {
      final response = await _tasksService.request(
        url: url,
        method: method.toUpperCase() == 'POST' ? Method.POST : Method.GET,
        params: {
          'id': actionId,
          'result': actionResult,
          'comment': comment,
        },
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        throw RepositoryException(
          response.statusMessage ?? 'Request failed',
          statusCode: response.statusCode,
        );
      }
    } on DioError catch (e) {
      if (e.response == null) {
        rethrow;
      } else {
        throw RepositoryException(e.message, statusCode: e.response?.statusCode);
      }
    }
  }
}
