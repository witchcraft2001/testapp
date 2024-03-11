part of '../tasks_sbs_weekly_screen.dart';

class _TaskCardConsultantRecord extends StatelessWidget {
  final ApiTaskSbsWeeklyRecord record;
  final bool isLast;

  const _TaskCardConsultantRecord({
    required this.record,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    // final theme = context.appTheme;
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

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
        color: colors?.bgMenu,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TlTag(
                  tag: appTaskSbsRecordData[record.result]!.label,
                  borderRadius: TlDecoration.brTagXl,
                  backgroundColor: appTaskSbsRecordData[record.result]!.color?.withOpacity(0.2),
                  style: AppTextStyle.font(
                    fontSize: 11.0,
                    color: appTaskSbsRecordData[record.result]!.color,
                  ),
                  padding: TlSpaces.ph12v8,
                ),
                Text(
                  record.reportDate.toDateNumberString(),
                  style: text?.w400s11cSignatures,
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
                      style: text?.w400s16cMain,
                    ),
                  ),
                  Padding(
                    padding: TlSpaces.pl24,
                    child: Text(
                      record.hours,
                      style: text?.w700s20cSignatures,
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
        assetName: appTaskSbsRecordData[AppTaskSbsResultType.waiting]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSbsResultType.waiting),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSbsResultType.waiting),
        onPressed: () => _handleChangeResult(context, AppTaskSbsResultType.waiting),
        margin: margin,
      ),
      TLSlidableButton(
        assetName: appTaskSbsRecordData[AppTaskSbsResultType.rejected]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSbsResultType.rejected),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSbsResultType.rejected),
        onPressed: () => _handleChangeResult(context, AppTaskSbsResultType.rejected),
        margin: margin,
      ),
      TLSlidableButton(
        assetName: appTaskSbsRecordData[AppTaskSbsResultType.approved]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSbsResultType.approved),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSbsResultType.approved),
        onPressed: () => _handleChangeResult(context, AppTaskSbsResultType.approved),
        margin: margin,
      ),
    ];
  }

  void _handleChangeResult(BuildContext context, AppTaskSbsResultType result) {
    if (result == AppTaskSbsResultType.rejected) {
      return _handleShowDialogReject(context);
    }

    context.bloc<TasksSbsWeeklyCubit>().changeRecord(
          record.copyWith(result: result, rejectReason: ''),
        );
  }

  void _handleShowDialogReject(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (_) => BlocProvider<TasksSbsWeeklyCubit>.value(
        value: context.read<TasksSbsWeeklyCubit>(),
        child: _RecordRejectDialog(record: record),
      ),
    );
  }

  Color? _getSlidableAssetColor(BuildContext context, AppTaskSbsResultType result) {
    final colors = context.appTheme?.colors;

    return record.result == result ? colors?.whiteOnColor : colors?.brAndIcons;
  }

  Color? _getSlidableBackgroundColor(AppTaskSbsResultType result) {
    return record.result == result ? appTaskSbsRecordData[result]!.color : null;
  }
}
