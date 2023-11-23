// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_hours_type/api_task_sbs_hours_type_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs/api_task_sbs_hours_type.dart';

extension ApiTaskSbsHoursTypeMapper on ApiTaskSbsHoursType {
  ApiTaskSbsHoursTypeDao toDao() {
    return switch (this) {
      ApiTaskSbsHoursType.unpaid => ApiTaskSbsHoursTypeDao.unpaid,
      ApiTaskSbsHoursType.paid => ApiTaskSbsHoursTypeDao.paid,
      ApiTaskSbsHoursType.ovt => ApiTaskSbsHoursTypeDao.ovt,
      ApiTaskSbsHoursType.ovtAndHalf => ApiTaskSbsHoursTypeDao.ovtAndHalf,
      ApiTaskSbsHoursType.type4 => ApiTaskSbsHoursTypeDao.type4,
      ApiTaskSbsHoursType.type5 => ApiTaskSbsHoursTypeDao.type5,
    };
  }
}
