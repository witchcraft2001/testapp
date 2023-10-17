part of 'tasks_sbs_screen.dart';

enum _TaskSBSStatus { approved, rejected, waiting }

final appTaskSBSRecordData = <_TaskSBSStatus, _AppTaskData>{
  _TaskSBSStatus.approved: _AppTaskData(
    label: S.current.taskStatusApproved,
    color: AppColors.predictors7,
    asset: TlAssets.iconApproveCircle,
  ),
  _TaskSBSStatus.rejected: _AppTaskData(
    label: S.current.taskStatusRejected,
    color: AppColors.danger,
    asset: TlAssets.iconRejectCircle,
  ),
  _TaskSBSStatus.waiting: _AppTaskData(
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
