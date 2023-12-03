// Project imports:
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';

extension AppTaskSbsResultTypeMapper on AppTaskSbsResultType {
  bool? toRequest() {
    return switch (this) {
      AppTaskSbsResultType.approved => true,
      AppTaskSbsResultType.rejected => false,
      AppTaskSbsResultType.waiting => null,
      AppTaskSbsResultType.none => null,
    };
  }
}
