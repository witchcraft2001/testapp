// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_register_record_result.dart';
import 'package:terralinkapp/domain/repositories/tasks_sbs_repository.dart';

@LazySingleton(
  as: TasksSBSRepository,
  env: [Environment.dev, Environment.prod],
)
class TasksSBSCachedRepository implements TasksSBSRepository {
  final TasksSBSCachedDataSource _dataSource;

  TasksSBSCachedRepository({
    required TasksSBSCachedDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<List<ApiTaskSBSDao>> getAll([String? search]) async {
    return await _dataSource.get(search);
  }

  @override
  Future<void> completeTask(List<AppTaskSBSRegisterRecordResult> records) {
    return _dataSource.completeTask(records);
  }

  @override
  Future<void> clearCache() async {
    _dataSource.clearCache();
  }
}
