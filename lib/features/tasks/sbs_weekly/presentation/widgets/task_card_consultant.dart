part of '../tasks_sbs_weekly_screen.dart';

class _TaskCardConsultant extends StatefulWidget {
  final int index;
  final int projectId;
  final ApiTaskSbsWeeklyConsultant consultant;

  const _TaskCardConsultant({
    required this.index,
    required this.projectId,
    required this.consultant,
  });

  @override
  State<_TaskCardConsultant> createState() => _TaskCardConsultantState();
}

class _TaskCardConsultantState extends State<_TaskCardConsultant> {
  bool _isShowMore = false;

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    final margin = _isShowMore ? const EdgeInsets.only(bottom: 1.0) : TlSpaces.pb4;

    final actions = _buildActions(context, margin);

    if (widget.consultant.records.isEmpty) {
      return const SizedBox();
    }

    final hoursData = getAppTaskSbsHoursTypeData(widget.consultant.hoursType, colors);

    return Column(
      children: [
        Slidable(
          key: ValueKey(widget.consultant.consultantId),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            extentRatio: TlSizes.taskSlidableActionWidth * actions.length / context.width,
            children: actions,
          ),
          child: TlCard(
            elevation: 0,
            borderRadius: BorderRadius.zero,
            margin: margin,
            child: InkWell(
              onTap: () => setState(() => _isShowMore = !_isShowMore),
              child: Padding(
                padding: TlSpaces.ph24v16,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Row(
                        children: [
                          TlSvg(
                            backgroundSize: TlSizes.taskConsultantIconContainerWidth,
                            assetName:
                                _isShowMore ? TlAssets.iconArrowDown : TlAssets.iconArrowRight,
                            size: TlSizes.iconSizeS,
                            color: _isShowMore ? colors?.primary : colors?.textSignatures,
                            margin: TlSpaces.pr16,
                          ),
                          Flexible(
                            child: Text(
                              widget.consultant.name,
                              style: text?.w600s16cSignatures,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: TlSpaces.ph12,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            width: 2.0,
                            color: appTaskSbsRecordData[widget.consultant.result]?.color ??
                                Colors.transparent,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.consultant.totalHours,
                            style: text?.w700s16cSignatures,
                          ),
                          if (hoursData != null)
                            Padding(
                              padding: TlSpaces.pt4,
                              child: Row(
                                children: [
                                  TlSvg(
                                    assetName: hoursData.asset,
                                    color: hoursData.color,
                                    size: TlSizes.iconSizeXS,
                                    margin: TlSpaces.pr8,
                                  ),
                                  Text(
                                    hoursData.label,
                                    style: AppTextStyle.font(
                                      fontSize: 11.0,
                                      color: hoursData.color,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (_isShowMore)
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: widget.consultant.records.length,
            itemBuilder: (_, index) => _TaskCardConsultantRecord(
              record: widget.consultant.records[index],
              isLast: index == widget.consultant.records.length - 1,
            ),
          ),
      ],
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

    context.bloc<TasksSbsWeeklyCubit>().changeConsultant(
          widget.projectId,
          widget.index,
          widget.consultant,
          result,
          '',
        );
  }

  void _handleShowDialogReject(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (_) => BlocProvider<TasksSbsWeeklyCubit>.value(
        value: context.read<TasksSbsWeeklyCubit>(),
        child: _ConsultantRejectDialog(
          index: widget.index,
          projectId: widget.projectId,
          consultant: widget.consultant,
        ),
      ),
    );
  }

  Color? _getSlidableAssetColor(BuildContext context, AppTaskSbsResultType result) {
    final colors = context.appTheme?.colors;

    return widget.consultant.result == result ? colors?.whiteOnColor : colors?.brAndIcons;
  }

  Color? _getSlidableBackgroundColor(AppTaskSbsResultType result) {
    return widget.consultant.result == result ? appTaskSbsRecordData[result]!.color : null;
  }
}
