part of '../tasks_sbs_screen.dart';

class _TaskCardEmployeeRecord extends StatefulWidget {
  final ApiTaskSBSRegisterRecordDao record;
  final bool isLast;

  const _TaskCardEmployeeRecord({
    required this.record,
    required this.isLast,
  });

  @override
  State<_TaskCardEmployeeRecord> createState() => _TaskCardEmployeeRecordState();
}

class _TaskCardEmployeeRecordState extends State<_TaskCardEmployeeRecord> {
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
        margin: widget.isLast ? TlSpaces.pb4 : const EdgeInsets.symmetric(vertical: 1.0),
        padding: TlSpaces.ph24v16,
        color: theme?.specialColorMenu,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TlTag(
                  tag: 'Согласовано',
                  borderRadius: TlDecoration.brTagXl,
                  backgroundColor: theme?.predictors7.withOpacity(0.2),
                  style: appFontRegular(11, theme?.predictors7),
                  padding: TlSpaces.ph12v8,
                ),
                Text(
                  widget.record.reportDate.toDateString(),
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
                      style: appFontRegular(16, theme?.whiteOnColor),
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
    final theme = context.appTheme?.appTheme;

    return [
      TlButton(
        size: TlSizes.taskSlidableActionWidth,
        onPressed: () {},
        leading: const TlSvg(assetName: TlAssets.iconTasksSBS),
        type: AppBtnType.info,
        style: AppBtnStyle.leadingNone,
        format: AppBtnFormat.square,
      ),
      TlButton(
        size: TlSizes.taskSlidableActionWidth,
        onPressed: () {},
        leading: const TlSvg(assetName: TlAssets.iconRejectCircle),
        type: AppBtnType.danger,
        style: AppBtnStyle.leadingNone,
        format: AppBtnFormat.square,
      ),
      TlButton(
        size: TlSizes.taskSlidableActionWidth,
        onPressed: () {},
        leading: TlSvg(
          assetName: TlAssets.iconApproveCircle,
          color: theme?.whiteOnColor,
        ),
        type: AppBtnType.success,
        style: AppBtnStyle.leadingBase,
        format: AppBtnFormat.square,
      ),
    ];
  }
}
