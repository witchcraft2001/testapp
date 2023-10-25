part of '../tasks_sbs_screen.dart';

class _TaskCardConsultant extends StatefulWidget {
  final int index;
  final int projectId;
  final AppTaskSBSConsultant consultant;

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
    final theme = context.appTheme?.appTheme;

    final actions = _buildActions(context);

    if (widget.consultant.records.isEmpty) {
      return const SizedBox();
    }

    final hoursData = appTaskSBSHoursTypeData[widget.consultant.hoursType];

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
            margin: _isShowMore ? const EdgeInsets.only(bottom: 1.0) : TlSpaces.pb4,
            child: InkWell(
              onTap: () => setState(() => _isShowMore = !_isShowMore),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: TlSpaces.pv16,
                    child: Row(
                      children: [
                        TlSvg(
                          backgroundSize: TlSizes.taskConsultantIconContainerWidth,
                          assetName: _isShowMore ? TlAssets.iconArrowDown : TlAssets.iconArrowRight,
                          size: TlSizes.iconSizeS,
                          color: _isShowMore ? theme?.primary : theme?.textSignatures,
                          margin: TlSpaces.pl24r16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.consultant.name,
                              style: appFontMedium(16, theme?.textSignatures),
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
                                      style: appFontRegular(11, hoursData.color),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: TlSpaces.pr24,
                    padding: TlSpaces.ph12,
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 2.0,
                          color: appTaskSBSRecordData[widget.consultant.result]?.color ??
                              Colors.transparent,
                        ),
                      ),
                    ),
                    child: Text(
                      widget.consultant.totalHours,
                      style: appFontSemi(20, theme!.textSignatures),
                    ),
                  ),
                ],
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

  List<Widget> _buildActions(BuildContext context) {
    return [
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSResultType.waiting]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSResultType.waiting),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSResultType.waiting),
        onPressed: () => _handleChangeResult(context, AppTaskSBSResultType.waiting),
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSResultType.rejected]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSResultType.rejected),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSResultType.rejected),
        onPressed: () => _handleChangeResult(context, AppTaskSBSResultType.rejected),
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSResultType.approved]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSResultType.approved),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSResultType.approved),
        onPressed: () => _handleChangeResult(context, AppTaskSBSResultType.approved),
      ),
    ];
  }

  void _handleChangeResult(BuildContext context, AppTaskSBSResultType result) {
    if (result == AppTaskSBSResultType.rejected) {
      return _handleShowDialogReject(context);
    }

    context.bloc<TasksSBSCubit>().changeConsultant(
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
      builder: (_) => BlocProvider<TasksSBSCubit>.value(
        value: context.read<TasksSBSCubit>(),
        child: _ConsultantRejectDialog(
          index: widget.index,
          projectId: widget.projectId,
          consultant: widget.consultant,
        ),
      ),
    );
  }

  Color? _getSlidableAssetColor(BuildContext context, AppTaskSBSResultType result) {
    final theme = context.appTheme?.appTheme;

    return widget.consultant.result == result ? theme?.whiteOnColor : theme?.bordersAndIconsIcons;
  }

  Color? _getSlidableBackgroundColor(AppTaskSBSResultType result) {
    return widget.consultant.result == result ? appTaskSBSRecordData[result]!.color : null;
  }
}
