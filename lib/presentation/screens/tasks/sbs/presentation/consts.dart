part of 'tasks_sbs_screen.dart';

final appTaskSBSRecordData = <AppTaskSBSRecordResult, _AppTaskData>{
  AppTaskSBSRecordResult.approved: _AppTaskData(
    label: S.current.taskStatusApproved,
    color: AppColors.predictors7,
    asset: TlAssets.iconApproveCircle,
  ),
  AppTaskSBSRecordResult.rejected: _AppTaskData(
    label: S.current.taskStatusRejected,
    color: AppColors.danger,
    asset: TlAssets.iconRejectCircle,
  ),
  AppTaskSBSRecordResult.waiting: _AppTaskData(
    label: S.current.taskStatusWaiting,
    color: AppColors.primary,
    asset: TlAssets.iconTasksSBS,
  ),
};

class _AppTaskData {
  final String label;
  final Color color;
  final String asset;

  const _AppTaskData({
    required this.label,
    required this.color,
    required this.asset,
  });
}
