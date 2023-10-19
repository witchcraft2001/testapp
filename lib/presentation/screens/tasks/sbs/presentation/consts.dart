part of 'tasks_sbs_screen.dart';

final appTaskSBSRecordData = <AppTaskSBSRegisterRecordResultType, _AppTaskResultData>{
  AppTaskSBSRegisterRecordResultType.approved: _AppTaskResultData(
    label: S.current.taskStatusApproved,
    color: AppColors.predictors7,
    asset: TlAssets.iconApproveCircle,
  ),
  AppTaskSBSRegisterRecordResultType.rejected: _AppTaskResultData(
    label: S.current.taskStatusRejected,
    color: AppColors.danger,
    asset: TlAssets.iconRejectCircle,
  ),
  AppTaskSBSRegisterRecordResultType.waiting: _AppTaskResultData(
    label: S.current.taskStatusWaiting,
    color: AppColors.primary,
    asset: TlAssets.iconTasksSBS,
  ),
};

class _AppTaskResultData {
  final String label;
  final Color color;
  final String asset;

  const _AppTaskResultData({
    required this.label,
    required this.color,
    required this.asset,
  });
}
