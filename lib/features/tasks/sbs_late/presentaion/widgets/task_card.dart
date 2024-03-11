part of '../tasks_sbs_late_screen.dart';

class _TaskCard extends StatelessWidget {
  final int index;
  final ApiTaskSbsLate task;

  const _TaskCard({
    required this.index,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    final actions = _buildActions(context);
    final hoursData = getAppTaskSbsHoursTypeData(task.hoursType, colors);

    return Slidable(
      key: ValueKey(task.recordId),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        extentRatio: TlSizes.taskSlidableActionWidth * actions.length / context.width,
        children: actions,
      ),
      child: TlCard(
        elevation: 0,
        borderRadius: BorderRadius.zero,
        margin: TlSpaces.pb4,
        child: Padding(
          padding: TlSpaces.ph24v16,
          child: Container(
            padding: TlSpaces.pr12,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 2.0,
                  color: appTaskSbsRecordData[task.result]?.color ?? Colors.transparent,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        task.consultant.displayName ??
                            task.consultant.login ??
                            task.consultant.email ??
                            '',
                        style: text?.w600s16cMain,
                      ),
                    ),
                    Text(
                      task.hours ?? '',
                      style: text?.w700s16cSignatures,
                    ),
                  ],
                ),
                Padding(
                  padding: TlSpaces.pt4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        task.reportDate.toDateNumberString(),
                        style: text?.w400s11cSignatures,
                      ),
                      if (hoursData != null)
                        Row(
                          children: [
                            TlSvg(
                              assetName: hoursData.asset,
                              color: hoursData.color,
                              size: TlSizes.iconSizeXS,
                              margin: TlSpaces.pr8,
                            ),
                            Text(
                              hoursData.label,
                              style: AppTextStyle.font(fontSize: 11.0, color: hoursData.color),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding: TlSpaces.pt8,
                  child: Text(task.details ?? '', style: text?.w600s14cMain),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      TLSlidableButton(
        assetName: appTaskSbsRecordData[AppTaskSbsResultType.waiting]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSbsResultType.waiting),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSbsResultType.waiting),
        onPressed: () => _handleChangeResult(context, AppTaskSbsResultType.waiting),
        margin: TlSpaces.pb4,
      ),
      TLSlidableButton(
        assetName: appTaskSbsRecordData[AppTaskSbsResultType.rejected]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSbsResultType.rejected),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSbsResultType.rejected),
        onPressed: () => _handleChangeResult(context, AppTaskSbsResultType.rejected),
        margin: TlSpaces.pb4,
      ),
      TLSlidableButton(
        assetName: appTaskSbsRecordData[AppTaskSbsResultType.approved]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSbsResultType.approved),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSbsResultType.approved),
        onPressed: () => _handleChangeResult(context, AppTaskSbsResultType.approved),
        margin: TlSpaces.pb4,
      ),
    ];
  }

  Color? _getSlidableAssetColor(BuildContext context, AppTaskSbsResultType result) {
    final colors = context.appTheme?.colors;

    return task.result == result ? colors?.whiteOnColor : colors?.brAndIcons;
  }

  Color? _getSlidableBackgroundColor(AppTaskSbsResultType result) {
    return task.result == result ? appTaskSbsRecordData[result]!.color : null;
  }

  void _handleChangeResult(BuildContext context, AppTaskSbsResultType result) {
    final updatedTask = task.copyWith(result: result);

    context.bloc<TasksSbsLateCubit>().changeTask(index, updatedTask);
  }
}
