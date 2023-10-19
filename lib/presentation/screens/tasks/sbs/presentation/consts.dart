part of 'tasks_sbs_screen.dart';

final appTaskSBSRecordData = <AppTaskSBSResultType, _AppTaskResultData>{
  AppTaskSBSResultType.approved: _AppTaskResultData(
    label: S.current.taskStatusApproved,
    color: AppColors.predictors7,
    asset: TlAssets.iconApproveCircle,
  ),
  AppTaskSBSResultType.rejected: _AppTaskResultData(
    label: S.current.taskStatusRejected,
    color: AppColors.danger,
    asset: TlAssets.iconRejectCircle,
  ),
  AppTaskSBSResultType.waiting: _AppTaskResultData(
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
