// Project imports:
import 'package:terralinkapp/features/tasks/sbs_late/data/dao/api_task_sbs_late_user_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late_user.dart';

extension ApiTaskSbsLateUserDaoMapper on ApiTaskSbsLateUserDao {
  ApiTaskSbsLateUser toDomain() => ApiTaskSbsLateUser(
        displayName: displayName,
        email: email,
        login: login,
      );
}
