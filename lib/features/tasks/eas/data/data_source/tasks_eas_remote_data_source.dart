// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/tasks/common/data/entities/api_task_eas_or_vacation_record_result.dart';
import 'package:terralinkapp/features/tasks/common/data/services/tasks_summary_api_service.dart';
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_dao.dart';
import 'package:terralinkapp/features/tasks/eas/data/dao/api_tasks_eas/api_tasks_eas_dao.dart';

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
  final LogService _logService;

  TasksEasRemoteDataSourceImpl(
    this._tasksService,
    this._logService,
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
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
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
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
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
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
