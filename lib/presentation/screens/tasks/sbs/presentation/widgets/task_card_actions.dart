part of '../tasks_sbs_screen.dart';

class _TaskCardActions extends StatelessWidget {
  final AppTaskSBS task;

  const _TaskCardActions({
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: TlDecoration.brTasksActions,
        color: context.appTheme?.appTheme.backgroundPopupWidget,
      ),
      padding: TlSpaces.ph24,
      child: SafeArea(
        child: TlButton(
          padding: TlSpaces.pt24b12,
          title: S.current.btnConfirm,
          type: AppBtnType.secondary,
          onPressed: () => _handleComplete(context),
        ),
      ),
    );
  }

  void _handleComplete(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => TlDialogConfirm(
        message: S.current.tasksSBSConfirmMessage,
        confirmTitle: S.current.btnOk,
        confirmType: AppBtnType.info,
        onConfirm: () {
          // context.bloc<TasksSBSCubit>().completeTask(task);
          Navigator.pop(context);
        },
      ),
    );
  }
}
