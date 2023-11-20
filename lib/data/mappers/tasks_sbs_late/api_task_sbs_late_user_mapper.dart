// Project imports:
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_late_user/api_task_sbs_late_user_dao.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late_user.dart';

extension ApiTaskSbsLateUserMapper on ApiTaskSbsLateUser {
  ApiTaskSbsLateUserDao toDao() => ApiTaskSbsLateUserDao(
        displayName: displayName,
        email: email,
        login: login,
      );
}
