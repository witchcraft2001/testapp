// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/api_routes.dart';
import 'package:terralinkapp/data/models/responses/api_task_summary/api_task_summary_dao.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/tasks_summary_api_service.dart';
import 'package:terralinkapp/data/services/log_service.dart';

abstract class TasksSummaryRemoteDataSource {
  Future<List<ApiTaskSummaryDao>> getSummary();
}

@LazySingleton(
  as: TasksSummaryRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksSummaryRemoteDataSourceImpl extends TasksSummaryRemoteDataSource {
  final TasksSummaryApiService _tasksService;
  final LogService _logService;

  TasksSummaryRemoteDataSourceImpl(
    this._tasksService,
    this._logService,
  );

  @override
  Future<List<ApiTaskSummaryDao>> getSummary() async {
    try {
      final response = await _tasksService.request(
        url: ApiRoutes.tasksSummary,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        try {
          return List.from(response.data)
              .map((summary) => ApiTaskSummaryDao.fromJson(summary))
              .toList();
        } catch (e, st) {
          _logService.recordError(e, st);

          rethrow;
        }
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
