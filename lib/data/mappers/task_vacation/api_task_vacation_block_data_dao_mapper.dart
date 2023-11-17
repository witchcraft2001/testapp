// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_vacation/api_task_vacation_block_data_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_vacation/api_task_vacation_block_data.dart';

extension ApiTaskVacationBlockDataDaoMapper on ApiTaskVacationBlockDataDao {
  ApiTaskVacationBlockData toDomain() => ApiTaskVacationBlockData(
        id,
        title,
        value,
        sort,
      );
}
