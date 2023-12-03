// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/features/tasks/common/data/entities/api_task_eas_or_vacation_record_result.dart';
import 'package:terralinkapp/features/tasks/common/data/services/tasks_summary_api_service.dart';
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_dao.dart';
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_tasks_vacation_dao/api_tasks_vacation_dao.dart';

abstract class TasksVacationRemoteDataSource {
  Future<List<ApiTaskVacationDao>> getAll();
  Future<bool> completeTask(ApiTaskEasOrVacationRecordResult record);
}

@LazySingleton(
  as: TasksVacationRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksVacationRemoteDataSourceImpl extends TasksVacationRemoteDataSource {
  final TasksSummaryApiService _tasksService;

  TasksVacationRemoteDataSourceImpl(
    this._tasksService,
  );

  @override
  Future<List<ApiTaskVacationDao>> getAll() async {
    try {
      final result = await _tasksService.request(
        url: ApiRoutes.tasksVacations,
        method: Method.GET,
      );

      if (result.statusCode == 200) {
        return ApiTasksVacationDao.fromJson(result.data).results;
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
        url: ApiRoutes.tasksVacations,
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
}
