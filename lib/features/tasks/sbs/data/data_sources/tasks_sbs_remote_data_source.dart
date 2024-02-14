// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/tasks/sbs/data/entities/api_task_sbs_record_result.dart';
import 'package:terralinkapp/features/tasks/sbs/data/services/tasks_sbs_api_service.dart';
import 'package:terralinkapp/features/tasks/sbs_late/data/dao/api_task_sbs_late_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/data/dao/api_task_sbs_weekly/api_task_sbs_weekly_dao.dart';

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
  final LogService _logService;

  TasksSbsRemoteDataSourceImpl(
    this._tasksService,
    this._logService,
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
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
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
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
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
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
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
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
