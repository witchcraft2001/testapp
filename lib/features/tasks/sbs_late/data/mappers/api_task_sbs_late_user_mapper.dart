// Project imports:
import 'package:terralinkapp/features/tasks/sbs_late/data/dao/api_task_sbs_late_user_dao.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late_user.dart';

extension ApiTaskSbsLateUserMapper on ApiTaskSbsLateUser {
  ApiTaskSbsLateUserDao toDao() => ApiTaskSbsLateUserDao(
        displayName: displayName,
        email: email,
        login: login,
      );
}
