part of '../tasks_sbs_screen.dart';

class _ConsultantRejectDialog extends StatefulWidget {
  final int index;
  final int projectId;
  final AppTaskSBSConsultant consultant;

  const _ConsultantRejectDialog({
    required this.index,
    required this.projectId,
    required this.consultant,
  });

  @override
  State<_ConsultantRejectDialog> createState() => _ConsultantRejectDialogState();
}

class _ConsultantRejectDialogState extends State<_ConsultantRejectDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _rejectReason;

  @override
  void initState() {
    super.initState();

    _rejectReason = widget.consultant.rejectReason;
  }

  @override
  Widget build(BuildContext context) {
    return TlDialogConfirm(
      content: Form(
        key: _formKey,
        child: TlTextField(
          autofocus: true,
          label: S.current.decisionComment,
          text: _rejectReason,
          onChanged: (value) => setState(() => _rejectReason = value),
          validator: validateRequiredTextField,
        ),
      ),
      onConfirm: _handleConfirm,
      confirmTitle: S.current.btnReject,
      confirmType: AppBtnType.danger,
    );
  }

  _handleConfirm() {
    if (_formKey.currentState?.validate() == true) {
      context.bloc<TasksSBSCubit>().changeConsultant(
            widget.projectId,
            widget.index,
            widget.consultant,
            AppTaskSBSResultType.rejected,
            _rejectReason,
          );

      Navigator.pop(context);
    }
  }
}
