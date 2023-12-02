// Project imports:
import 'package:terralinkapp/features/tasks/sbs/data/dao/api_task_sbs_hours_type_dao.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/api_task_sbs_hours_type.dart';

extension ApiTaskSbsHoursTypeDaoMapper on ApiTaskSbsHoursTypeDao {
  ApiTaskSbsHoursType toDomain() {
    return switch (this) {
      ApiTaskSbsHoursTypeDao.unpaid => ApiTaskSbsHoursType.unpaid,
      ApiTaskSbsHoursTypeDao.paid => ApiTaskSbsHoursType.paid,
      ApiTaskSbsHoursTypeDao.ovt => ApiTaskSbsHoursType.ovt,
      ApiTaskSbsHoursTypeDao.ovtAndHalf => ApiTaskSbsHoursType.ovtAndHalf,
      ApiTaskSbsHoursTypeDao.type4 => ApiTaskSbsHoursType.type4,
      ApiTaskSbsHoursTypeDao.type5 => ApiTaskSbsHoursType.type5,
    };
  }
}
