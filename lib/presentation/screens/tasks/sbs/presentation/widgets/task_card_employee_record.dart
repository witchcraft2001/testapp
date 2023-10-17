part of '../tasks_sbs_screen.dart';

class _TaskCardEmployeeRecord extends StatefulWidget {
  final AppTaskSBSRegisterRecord record;
  final bool isLast;

  const _TaskCardEmployeeRecord({
    required this.record,
    required this.isLast,
  });

  @override
  State<_TaskCardEmployeeRecord> createState() => _TaskCardEmployeeRecordState();
}

class _TaskCardEmployeeRecordState extends State<_TaskCardEmployeeRecord> {
  final _margin = const EdgeInsets.symmetric(vertical: 1.0);

  _TaskSBSStatus _status = _TaskSBSStatus.approved;
  String _comment = '';

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    final actions = _buildActions(context);

    return Slidable(
      key: ValueKey(widget.record.recordID),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: TlSizes.taskSlidableActionWidth * actions.length / context.width,
        children: actions,
      ),
      child: Container(
        margin: widget.isLast ? TlSpaces.pb4 : _margin,
        padding: TlSpaces.ph24v16,
        color: theme?.specialColorMenu,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TlTag(
                  tag: appTaskSBSRecordData[_status]!.label,
                  borderRadius: TlDecoration.brTagXl,
                  backgroundColor: appTaskSBSRecordData[_status]!.color.withOpacity(0.2),
                  style: appFontRegular(11, appTaskSBSRecordData[_status]!.color),
                  padding: TlSpaces.ph12v8,
                ),
                Text(
                  widget.record.reportDate.toDateNumber(),
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
                      widget.record.details,
                      style: appFontRegular(16, theme?.textMain),
                    ),
                  ),
                  Padding(
                    padding: TlSpaces.pl24,
                    child: Text(
                      widget.record.hours,
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
        assetName: appTaskSBSRecordData[_TaskSBSStatus.waiting]!.asset,
        assetColor: _getSlidableAssetColor(context, _TaskSBSStatus.waiting),
        backgroundColor: _getSlidableBackgroundColor(_TaskSBSStatus.waiting),
        onPressed: () => _handleSetStatus(_TaskSBSStatus.waiting),
        margin: _margin,
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[_TaskSBSStatus.rejected]!.asset,
        assetColor: _getSlidableAssetColor(context, _TaskSBSStatus.rejected),
        backgroundColor: _getSlidableBackgroundColor(_TaskSBSStatus.rejected),
        onPressed: () => _handleSetStatus(_TaskSBSStatus.rejected),
        margin: _margin,
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[_TaskSBSStatus.approved]!.asset,
        assetColor: _getSlidableAssetColor(context, _TaskSBSStatus.approved),
        backgroundColor: _getSlidableBackgroundColor(_TaskSBSStatus.approved),
        onPressed: () => _handleSetStatus(_TaskSBSStatus.approved),
        margin: _margin,
      ),
    ];
  }

  void _handleSetStatus(_TaskSBSStatus status) {
    if (status == _TaskSBSStatus.rejected) {
      return _handleShowDialogReject(context);
    } else {
      // ToDo 57 если причина отклонения ранее была указана, то в результате нужно почистить ее
      setState(() {
        _status = status;
        _comment = '';
      });
    }
  }

  void _handleShowDialogReject(BuildContext context) {
    showDialog<dynamic>(
      context: context,
      builder: (_) => TlDialogConfirm(
        content: TlTextField(
          autofocus: true,
          label: S.current.decisionComment,
          text: _comment,
          onChanged: (value) => setState(() => _comment = value),
        ),
        onConfirm: () => setState(() => _status = _TaskSBSStatus.rejected),
        confirmTitle: S.current.btnReject,
        confirmType: AppBtnType.danger,
      ),
    );
  }

  Color? _getSlidableAssetColor(BuildContext context, _TaskSBSStatus status) {
    final theme = context.appTheme?.appTheme;

    return _status == status ? theme?.whiteOnColor : theme?.bordersAndIconsIcons;
  }

  Color? _getSlidableBackgroundColor(_TaskSBSStatus status) {
    return _status == status ? appTaskSBSRecordData[status]!.color : null;
  }
}
