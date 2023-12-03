// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_block_data_dao.dart';
import 'package:terralinkapp/features/tasks/eas/data/dao/api_task_eas/api_task_eas_block_data_value_dao.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_block_data.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_block_data_value.dart';

extension ApiTaskEasBlockDataDaoMapper on ApiTaskEasBlockDataDao {
  ApiTaskEasBlockData toDomain() => ApiTaskEasBlockData(
        id,
        title,
        value.toDomain(),
        sort,
      );
}

extension ApiTaskEasBlockDataValueDaoMapper on List<ApiTaskEasBlockDataValueDao> {
  List<ApiTaskEasBlockDataValue> toDomain() => map((value) => ApiTaskEasBlockDataValue(
        value.name,
        value.extension,
        value.url,
      )).toList();
}
