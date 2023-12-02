// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/api_routes.dart';
import 'package:terralinkapp/data/models/requests/api_task_sbs_result/api_task_sbs_record_result.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_late/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_weekly/api_task_sbs_weekly_dao.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/tasks_sbs_api_service.dart';

abstract class TasksSbsRemoteDataSource {
  Future<List<ApiTaskSbsWeeklyDao>> getWeeklyRecords({bool isDelegated});
  Future<List<ApiTaskSbsLateDao>> getLateRecords();

  Future<bool> completeWeeklyRecords(List<ApiTaskSbsRecordResult> records);
  Future<bool> completeLateRecords(List<ApiTaskSbsRecordResult> records);
}

@LazySingleton(
  as: TasksSbsRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksSbsRemoteDataSourceImpl extends TasksSbsRemoteDataSource {
  final TasksSbsApiService _tasksService;

  TasksSbsRemoteDataSourceImpl(
    this._tasksService,
  );

  @override
  Future<List<ApiTaskSbsWeeklyDao>> getWeeklyRecords({bool isDelegated = false}) async {
    try {
      final response = await _tasksService.request(
        url: isDelegated ? ApiRoutes.tasksSbsWeeklyDelegate : ApiRoutes.tasksSbsWeekly,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        return List.from(response.data).map((task) => ApiTaskSbsWeeklyDao.fromJson(task)).toList();
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
  Future<List<ApiTaskSbsLateDao>> getLateRecords() async {
    try {
      final response = await _tasksService.request(
        url: ApiRoutes.tasksSbsLate,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        return List.from(response.data).map((task) => ApiTaskSbsLateDao.fromJson(task)).toList();
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
  Future<bool> completeWeeklyRecords(List<ApiTaskSbsRecordResult> records) async {
    try {
      final response = await _tasksService.request(
        url: ApiRoutes.tasksSbsWeekly,
        method: Method.POST,
        params: records.map((record) => record.toJson()).toList(),
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
  Future<bool> completeLateRecords(List<ApiTaskSbsRecordResult> records) async {
    try {
      final response = await _tasksService.request(
        url: ApiRoutes.tasksSbsLate,
        method: Method.POST,
        params: records.map((record) => record.toJson()).toList(),
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
