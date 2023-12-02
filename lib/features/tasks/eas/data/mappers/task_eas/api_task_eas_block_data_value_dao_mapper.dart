// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_block_data_value_dao.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_block_data_value.dart';

extension ApiTaskEasBlockDataValueDaoMapper on ApiTaskEasBlockDataValueDao {
  ApiTaskEasBlockDataValue toDomain() => ApiTaskEasBlockDataValue(
        name,
        extension,
        url,
      );
}
