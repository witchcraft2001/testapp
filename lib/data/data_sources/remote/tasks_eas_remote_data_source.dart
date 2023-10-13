// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/api_routes.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_dao.dart';
import 'package:terralinkapp/data/models/responses/api_tasks_eas/api_tasks_eas_dao.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/tasks_eas_api_service.dart';

abstract class TasksEASRemoteDataSource {
  Future<List<ApiTaskEASDao>> getAll();

  Future<bool> setStatus({
    required int actionId,
    required String actionResult,
    required String method,
    required String url,
    String? comment,
  });
}

@LazySingleton(
  as: TasksEASRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksEASRemoteDataSourceImpl extends TasksEASRemoteDataSource {
  final TasksEASApiService _tasksService;

  TasksEASRemoteDataSourceImpl(this._tasksService);

  @override
  Future<List<ApiTaskEASDao>> getAll() async {
    try {
      final result = await _tasksService.request(
        url: ApiRoutes.tasksEAS,
        method: Method.GET,
      );

      if (result.statusCode == 200) {
        return ApiTasksEASDao.fromMappedJson(result.data).results;
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
  Future<bool> setStatus({
    required int actionId,
    required String actionResult,
    required String method,
    required String url,
    String? comment,
  }) async {
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
