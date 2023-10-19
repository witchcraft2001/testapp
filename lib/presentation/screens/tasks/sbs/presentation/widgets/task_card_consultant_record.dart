part of '../tasks_sbs_screen.dart';

class _TaskCardConsultantRecord extends StatelessWidget {
  final AppTaskSBSRecord record;
  final bool isLast;

  const _TaskCardConsultantRecord({
    required this.record,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;
    final margin = isLast ? TlSpaces.pb4 : const EdgeInsets.symmetric(vertical: 1.0);

    final actions = _buildActions(context, margin);

    return Slidable(
      key: ValueKey(record.recordId),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: TlSizes.taskSlidableActionWidth * actions.length / context.width,
        children: actions,
      ),
      child: Container(
        margin: isLast ? TlSpaces.pb4 : margin,
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

  List<Widget> _buildActions(BuildContext context, EdgeInsets margin) {
    return [
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSResultType.waiting]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSResultType.waiting),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSResultType.waiting),
        onPressed: () => _handleChangeResult(context, AppTaskSBSResultType.waiting),
        margin: margin,
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSResultType.rejected]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSResultType.rejected),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSResultType.rejected),
        onPressed: () => _handleChangeResult(context, AppTaskSBSResultType.rejected),
        margin: margin,
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSResultType.approved]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSResultType.approved),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSResultType.approved),
        onPressed: () => _handleChangeResult(context, AppTaskSBSResultType.approved),
        margin: margin,
      ),
    ];
  }

  void _handleChangeResult(BuildContext context, AppTaskSBSResultType result) {
    if (result == AppTaskSBSResultType.rejected) {
      return _handleShowDialogReject(context);
    }

    context.bloc<TasksSBSCubit>().changeRecord(
          record.copyWith(result: result, rejectReason: ''),
        );
  }

  void _handleShowDialogReject(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (_) => BlocProvider<TasksSBSCubit>.value(
        value: context.read<TasksSBSCubit>(),
        child: _RecordRejectDialog(record: record),
      ),
    );
  }

  Color? _getSlidableAssetColor(BuildContext context, AppTaskSBSResultType result) {
    final theme = context.appTheme?.appTheme;

    return record.result == result ? theme?.whiteOnColor : theme?.bordersAndIconsIcons;
  }

  Color? _getSlidableBackgroundColor(AppTaskSBSResultType result) {
    return record.result == result ? appTaskSBSRecordData[result]!.color : null;
  }
}
