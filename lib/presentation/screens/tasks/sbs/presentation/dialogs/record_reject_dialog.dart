part of '../tasks_sbs_screen.dart';

class _RecordRejectDialog extends StatefulWidget {
  final AppTaskSBSRecord record;

  const _RecordRejectDialog({
    required this.record,
  });

  @override
  State<_RecordRejectDialog> createState() => _RecordRejectDialogState();
}

class _RecordRejectDialogState extends State<_RecordRejectDialog> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _rejectReason;

  @override
  void initState() {
    super.initState();
    _rejectReason = widget.record.rejectReason;
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
      final updatedRecord = widget.record.copyWith(
        result: AppTaskSBSRegisterRecordResultType.rejected,
        rejectReason: _rejectReason,
      );

      context.bloc<TasksSBSCubit>().changeRecord(updatedRecord);

      Navigator.pop(context);
    }
  }
}
