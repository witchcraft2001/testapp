// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_task_sbs/api_task_sbs_hours_type.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';

final appTaskSbsRecordData = <AppTaskSbsResultType, _AppTaskSbsUiData>{
  AppTaskSbsResultType.approved: _AppTaskSbsUiData(
    label: S.current.taskStatusApproved,
    color: AppColors.predictors7,
    asset: TlAssets.iconApproveCircle,
  ),
  AppTaskSbsResultType.rejected: _AppTaskSbsUiData(
    label: S.current.taskStatusRejected,
    color: AppColors.danger,
    asset: TlAssets.iconRejectCircle,
  ),
  AppTaskSbsResultType.waiting: _AppTaskSbsUiData(
    label: S.current.taskStatusWaiting,
    color: AppColors.primary,
    asset: TlAssets.iconTasksSbs,
  ),
};

final appTaskSbsHoursTypeData = <ApiTaskSbsHoursType, _AppTaskSbsUiData>{
  ApiTaskSbsHoursType.unpaid: _AppTaskSbsUiData(
    label: S.current.tasksSbsHoursUnpaid,
    color: AppColors.second,
    asset: TlAssets.iconTasksSbsHoursUnpaid,
  ),
  ApiTaskSbsHoursType.paid: _AppTaskSbsUiData(
    label: S.current.tasksSbsHoursPaid,
    color: AppColors.second,
    asset: TlAssets.iconTasksSbsHoursPaid,
  ),
  ApiTaskSbsHoursType.ovt: _AppTaskSbsUiData(
    label: S.current.tasksSbsHoursOVT,
    color: AppColors.info,
    asset: TlAssets.iconTasksSbsHoursOVT,
  ),
  ApiTaskSbsHoursType.ovtAndHalf: _AppTaskSbsUiData(
    label: S.current.tasksSbsHoursOVTAndHalf,
    color: AppColors.info,
    asset: TlAssets.iconTasksSbsHoursOVT,
  ),
};

class _AppTaskSbsUiData {
  final String label;
  final Color color;
  final String asset;

  const _AppTaskSbsUiData({
    required this.label,
    required this.color,
    required this.asset,
  });
}
