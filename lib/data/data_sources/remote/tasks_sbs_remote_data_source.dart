// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/api_routes.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/http/http_service.dart';
import 'package:terralinkapp/data/services/http/tasks_sbs_api_service.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_register_record.dart';

abstract class TasksSBSRemoteDataSource {
  Future<List<ApiTaskSBSDao>> getAll();

  Future<bool> completeTask(List<AppTaskSBSRegisterRecord> records);
}

@LazySingleton(
  as: TasksSBSRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksSBSRemoteDataSourceImpl extends TasksSBSRemoteDataSource {
  final TasksSBSApiService _tasksService;

  TasksSBSRemoteDataSourceImpl(this._tasksService);

  @override
  Future<List<ApiTaskSBSDao>> getAll() async {
    try {
      final response = await _tasksService.request(
        url: ApiRoutes.tasksSBS,
        method: Method.GET,
      );

      if (response.statusCode == 200) {
        return List.from(response.data).map((task) => ApiTaskSBSDao.fromJson(task)).toList();
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
  Future<bool> completeTask(List<AppTaskSBSRegisterRecord> records) async {
    try {
      final response = await _tasksService.request(
        url: ApiRoutes.tasksSBS,
        method: Method.POST,
        // ToDo 57 формат нужно менять, т.к. здесь отправляется List, а не Map
        params: {},
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
