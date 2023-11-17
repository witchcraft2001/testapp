// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/task_bottom_actions_container.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/dialogs/tl_dialog_confirm.dart';

class TaskSbsProjectActions extends StatelessWidget {
  final VoidCallback onConfirm;

  const TaskSbsProjectActions({
    super.key,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return TaskBottomActionsContainer(
      child: TlButton(
        title: S.current.btnConfirm,
        type: AppBtnType.secondary,
        onPressed: () => _handleConfirm(context),
      ),
    );
  }

  void _handleConfirm(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (_) => TlDialogConfirm(
        message: S.current.tasksSbsConfirmMessage,
        confirmTitle: S.current.btnOk,
        confirmType: AppBtnType.info,
        onConfirm: onConfirm,
      ),
    );
  }
}
