// Project imports:
import 'package:terralinkapp/data/mappers/tasks_summary/api_task_summary_system_dao_mapper.dart';
import 'package:terralinkapp/data/models/responses/api_task_summary/api_task_summary_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_summary/api_task_summary.dart';

extension ApiTaskSummaryDaoMapper on ApiTaskSummaryDao {
  ApiTaskSummary toDomain({bool isDelegated = false}) => ApiTaskSummary(
        title: title,
        system: system.toDomain(),
        count: count,
      );
}
