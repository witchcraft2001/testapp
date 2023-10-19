part of '../tasks_sbs_screen.dart';

class _TaskCardEmployeeRecord extends StatelessWidget {
  final AppTaskSBSRegisterRecord record;
  final bool isLast;

  const _TaskCardEmployeeRecord({
    required this.record,
    required this.isLast,
  });

  final _margin = const EdgeInsets.symmetric(vertical: 1.0);

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    final actions = _buildActions(context);

    return Slidable(
      key: ValueKey(record.recordId),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: TlSizes.taskSlidableActionWidth * actions.length / context.width,
        children: actions,
      ),
      child: Container(
        margin: isLast ? TlSpaces.pb4 : _margin,
        padding: TlSpaces.ph24v16,
        color: theme?.specialColorMenu,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TlTag(
                  tag: appTaskSBSRecordData[record.result]!.label,
                  borderRadius: TlDecoration.brTagXl,
                  backgroundColor: appTaskSBSRecordData[record.result]!.color.withOpacity(0.2),
                  style: appFontRegular(11, appTaskSBSRecordData[record.result]!.color),
                  padding: TlSpaces.ph12v8,
                ),
                Text(
                  record.reportDate.toDateNumber(),
                  style: appFontRegular(11, theme?.textSignatures),
                ),
              ],
            ),
            Padding(
              padding: TlSpaces.pt12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      record.details,
                      style: appFontRegular(16, theme?.textMain),
                    ),
                  ),
                  Padding(
                    padding: TlSpaces.pl24,
                    child: Text(
                      record.hours,
                      style: appFontSemi(20, theme?.textSignatures),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSRegisterRecordResultType.waiting]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSRegisterRecordResultType.waiting),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSRegisterRecordResultType.waiting),
        onPressed: () => _handleSetStatus(context, AppTaskSBSRegisterRecordResultType.waiting),
        margin: _margin,
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSRegisterRecordResultType.rejected]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSRegisterRecordResultType.rejected),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSRegisterRecordResultType.rejected),
        onPressed: () => _handleSetStatus(context, AppTaskSBSRegisterRecordResultType.rejected),
        margin: _margin,
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSRegisterRecordResultType.approved]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSRegisterRecordResultType.approved),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSRegisterRecordResultType.approved),
        onPressed: () => _handleSetStatus(context, AppTaskSBSRegisterRecordResultType.approved),
        margin: _margin,
      ),
    ];
  }

  void _handleSetStatus(BuildContext context, AppTaskSBSRegisterRecordResultType status) {
    if (status == AppTaskSBSRegisterRecordResultType.rejected) {
      return _handleShowDialogReject(context);
    }

    context.bloc<TasksSBSCubit>().changeRecord(
          record.copyWith(result: status, rejectReason: ''),
        );
  }

  void _handleShowDialogReject(BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => BlocProvider<TasksSBSCubit>.value(
        value: context.read<TasksSBSCubit>(),
        child: _RecordDialogReject(record: record),
      ),
    );
  }

  Color? _getSlidableAssetColor(BuildContext context, AppTaskSBSRegisterRecordResultType status) {
    final theme = context.appTheme?.appTheme;

    return record.result == status ? theme?.whiteOnColor : theme?.bordersAndIconsIcons;
  }

  Color? _getSlidableBackgroundColor(AppTaskSBSRegisterRecordResultType status) {
    return record.result == status ? appTaskSBSRecordData[status]!.color : null;
  }
}

class _RecordDialogReject extends StatefulWidget {
  final AppTaskSBSRegisterRecord record;

  const _RecordDialogReject({
    required this.record,
  });

  @override
  State<_RecordDialogReject> createState() => _RecordDialogRejectState();
}

class _RecordDialogRejectState extends State<_RecordDialogReject> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String rejectReason;

  @override
  void initState() {
    super.initState();

    rejectReason = widget.record.rejectReason;
  }

  @override
  Widget build(BuildContext context) {
    return TlDialogConfirm(
      content: Form(
        key: _formKey,
        child: TlTextField(
          autofocus: true,
          label: S.current.decisionComment,
          text: rejectReason,
          onChanged: (value) => setState(() => rejectReason = value),
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
        rejectReason: rejectReason,
      );

      context.bloc<TasksSBSCubit>().changeRecord(updatedRecord);

      Navigator.pop(context);
    }
  }
}
