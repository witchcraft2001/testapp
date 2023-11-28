// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/api_routes.dart';
import 'package:terralinkapp/data/models/requests/api_task_eas_or_vacation_record_result/api_task_eas_or_vacation_record_result.dart';
import 'package:terralinkapp/data/models/responses/api_task_eas/api_task_eas_dao.dart';
import 'package:terralinkapp/data/models/responses/api_tasks_eas/api_tasks_eas_dao.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/tasks_summary_api_service.dart';

abstract class TasksEasRemoteDataSource {
  Future<List<ApiTaskEasDao>> getAll();
  Future<bool> completeTask(ApiTaskEasOrVacationRecordResult record);
  Future<dynamic> getAttachment(String url);
}

@LazySingleton(
  as: TasksEasRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksEasRemoteDataSourceImpl extends TasksEasRemoteDataSource {
  final TasksSummaryApiService _tasksService;

  TasksEasRemoteDataSourceImpl(
    this._tasksService,
  );

  @override
  Future<List<ApiTaskEasDao>> getAll() async {
    try {
      final result = await _tasksService.request(
        url: ApiRoutes.tasksEas,
        method: Method.GET,
      );

      if (result.statusCode == 200) {
        return ApiTasksEasDao.fromMappedJson(result.data).results;
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
  Future<bool> completeTask(ApiTaskEasOrVacationRecordResult record) async {
    try {
      final response = await _tasksService.request(
        url: ApiRoutes.tasksEasComplete,
        method: Method.POST,
        params: record.toJson(),
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

  @override
  Future<dynamic> getAttachment(String url) async {
    try {
      final result = await _tasksService.request(
        url: 'api$url',
        method: Method.GET_FILE,
      );

      if (result.statusCode == 200) {
        return result.data;
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
}
