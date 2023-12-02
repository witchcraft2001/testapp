// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/features/tasks/common/data/services/tasks_summary_api_service.dart';
import 'package:terralinkapp/features/tasks/summary/data/dao/api_task_summary_dao.dart';

abstract class TasksSummaryRemoteDataSource {
  Future<List<ApiTaskSummaryDao>> getSummary();
}

@LazySingleton(
  as: TasksSummaryRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksSummaryRemoteDataSourceImpl extends TasksSummaryRemoteDataSource {
  final TasksSummaryApiService _tasksService;

  TasksSummaryRemoteDataSourceImpl(
    this._tasksService,
  );

  @override
  Future<List<ApiTaskSummaryDao>> getSummary() async {
    try {
      final response = await _tasksService.request(
        url: ApiRoutes.tasksSummary,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        return List.from(response.data)
            .map((summary) => ApiTaskSummaryDao.fromJson(summary))
            .toList();
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
