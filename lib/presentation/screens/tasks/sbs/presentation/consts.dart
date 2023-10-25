part of 'tasks_sbs_screen.dart';

final appTaskSBSRecordData = <AppTaskSBSResultType, _AppTaskUiData>{
  AppTaskSBSResultType.approved: _AppTaskUiData(
    label: S.current.taskStatusApproved,
    color: AppColors.predictors7,
    asset: TlAssets.iconApproveCircle,
  ),
  AppTaskSBSResultType.rejected: _AppTaskUiData(
    label: S.current.taskStatusRejected,
    color: AppColors.danger,
    asset: TlAssets.iconRejectCircle,
  ),
  AppTaskSBSResultType.waiting: _AppTaskUiData(
    label: S.current.taskStatusWaiting,
    color: AppColors.primary,
    asset: TlAssets.iconTasksSBS,
  ),
};

final appTaskSBSHoursTypeData = <AppTaskSBSConsultantHoursType, _AppTaskUiData>{
  AppTaskSBSConsultantHoursType.unpaid: _AppTaskUiData(
    label: S.current.tasksSBSHoursUnpaid,
    color: AppColors.second,
    asset: TlAssets.iconTasksSBSHoursUnpaid,
  ),
  AppTaskSBSConsultantHoursType.paid: _AppTaskUiData(
    label: S.current.tasksSBSHoursPaid,
    color: AppColors.second,
    asset: TlAssets.iconTasksSBSHoursPaid,
  ),
  AppTaskSBSConsultantHoursType.ovt: _AppTaskUiData(
    label: S.current.tasksSBSHoursOVT,
    color: AppColors.info,
    asset: TlAssets.iconTasksSBSHoursOVT,
  ),
  AppTaskSBSConsultantHoursType.ovtAndHalf: _AppTaskUiData(
    label: S.current.tasksSBSHoursOVTAndHalf,
    color: AppColors.info,
    asset: TlAssets.iconTasksSBSHoursOVT,
  ),
};

class _AppTaskUiData {
  final String label;
  final Color color;
  final String asset;

  const _AppTaskUiData({
    required this.label,
    required this.color,
    required this.asset,
  });
}
