// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_eas_block_data/api_task_eas_block_data_dao.dart';
import 'package:terralinkapp/domain/models/app_task_eas/app_task_eas_block_data.dart';

extension ApiTaskEASBlockDataDaoMapper on ApiTaskEASBlockDataDao {
  AppTaskEASBlockData toDomain() => AppTaskEASBlockData(
        id,
        title,
        value,
        sort,
      );
}
