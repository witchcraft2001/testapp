// Project imports:
import 'package:terralinkapp/features/tasks/vacations/data/dao/api_task_vacation/api_task_vacation_block_data_dao.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_block_data.dart';

extension ApiTaskVacationBlockDataDaoMapper on ApiTaskVacationBlockDataDao {
  ApiTaskVacationBlockData toDomain() => ApiTaskVacationBlockData(
        id,
        title,
        value,
        sort,
      );
}
