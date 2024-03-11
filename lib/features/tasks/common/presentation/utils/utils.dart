// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/features/tasks/common/presentation/entities/app_task_sbs_ui_data.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/api_task_sbs_hours_type.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/generated/l10n.dart';

final appTaskSbsRecordData = <AppTaskSbsResultType, AppTaskSbsUiData>{
  AppTaskSbsResultType.approved: AppTaskSbsUiData(
    label: S.current.taskStatusApproved,
    color: appColorsThemeLight.predictors7, // согласно макету используется именно светлая тема
    asset: TlAssets.iconApproveCircle,
  ),
  AppTaskSbsResultType.rejected: AppTaskSbsUiData(
    label: S.current.taskStatusRejected,
    color: AppColors.stDanger,
    asset: TlAssets.iconRejectCircle,
  ),
  AppTaskSbsResultType.waiting: AppTaskSbsUiData(
    label: S.current.taskStatusWaiting,
    color: AppColors.stPrimary,
    asset: TlAssets.iconTasksSbs,
  ),
};

AppTaskSbsUiData? getAppTaskSbsHoursTypeData(
  ApiTaskSbsHoursType? hoursType,
  AppThemeColors? colors,
) {
  final typesData = <ApiTaskSbsHoursType, AppTaskSbsUiData>{
    ApiTaskSbsHoursType.unpaid: AppTaskSbsUiData(
      label: S.current.tasksSbsHoursUnpaid,
      color: colors?.textOptional,
      asset: TlAssets.iconTasksSbsHoursUnpaid,
    ),
    ApiTaskSbsHoursType.paid: AppTaskSbsUiData(
      label: S.current.tasksSbsHoursPaid,
      color: colors?.textOptional,
      asset: TlAssets.iconTasksSbsHoursPaid,
    ),
    ApiTaskSbsHoursType.ovt: AppTaskSbsUiData(
      label: S.current.tasksSbsHoursOVT,
      color: colors?.accent,
      asset: TlAssets.iconTasksSbsHoursOVT,
    ),
    ApiTaskSbsHoursType.ovtAndHalf: AppTaskSbsUiData(
      label: S.current.tasksSbsHoursOVTAndHalf,
      color: colors?.accent,
      asset: TlAssets.iconTasksSbsHoursOVT,
    ),
  };

  return typesData[hoursType];
}
