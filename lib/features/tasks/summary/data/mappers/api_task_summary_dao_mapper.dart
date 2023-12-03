// Project imports:
import 'package:terralinkapp/features/tasks/summary/data/dao/api_task_summary_dao.dart';
import 'package:terralinkapp/features/tasks/summary/data/mappers/api_task_summary_system_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/summary/domain/entities/api_task_summary.dart';

extension ApiTaskSummaryDaoMapper on ApiTaskSummaryDao {
  ApiTaskSummary toDomain({bool isDelegated = false}) => ApiTaskSummary(
        title: title,
        system: system.toDomain(),
        count: count,
      );
}
