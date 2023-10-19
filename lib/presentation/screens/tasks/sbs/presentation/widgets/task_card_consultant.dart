part of '../tasks_sbs_screen.dart';

class _TaskCardConsultant extends StatefulWidget {
  final int projectId;
  final AppTaskSBSConsultant consultant;
  final Map<int, AppTaskSBSRecord> completedRecords;

  const _TaskCardConsultant({
    required this.projectId,
    required this.consultant,
    required this.completedRecords,
  });

  @override
  State<_TaskCardConsultant> createState() => _TaskCardConsultantState();
}

class _TaskCardConsultantState extends State<_TaskCardConsultant> {
  bool _isShowMore = false;
  AppTaskSBSRegisterRecordResultType? _result;

  @override
  void initState() {
    super.initState();
    _getResult();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    _getResult();

    final actions = _buildActions(context);

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
            child: ListTile(
              horizontalTitleGap: TlSpaces.sp12,
              minLeadingWidth: TlSizes.iconSizeBase,
              contentPadding: TlSpaces.ph24v8,
              onTap: () => setState(() => _isShowMore = !_isShowMore),
              leading: TlSvg(
                assetName: _isShowMore ? TlAssets.iconArrowDown : TlAssets.iconArrowRight,
                size: TlSizes.iconSizeS,
                color: _isShowMore ? theme?.primary : theme?.textSignatures,
              ),
              title: Text(
                widget.consultant.name,
                style: appFontMedium(16, theme?.textSignatures),
              ),
              trailing: Container(
                padding: TlSpaces.ph12,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      width: 2.0,
                      color: _result != null
                          ? appTaskSBSRecordData[_result]!.color
                          : Colors.transparent,
                    ),
                  ),
                ),
                child: Text(
                  widget.consultant.totalHours,
                  style: appFontSemi(20, theme!.textSignatures),
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
            itemBuilder: (_, index) {
              AppTaskSBSRecord record = widget.consultant.records[index];

              if (widget.completedRecords.keys.contains(record.recordId)) {
                record = widget.completedRecords[record.recordId]!;
              }

              return _TaskCardConsultantRecord(
                record: record,
                isLast: index == widget.consultant.records.length - 1,
              );
            },
          ),
      ],
    );
  }

  List<Widget> _buildActions(BuildContext context) {
    return [
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSRegisterRecordResultType.waiting]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSRegisterRecordResultType.waiting),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSRegisterRecordResultType.waiting),
        onPressed: () => _handleChangeResult(context, AppTaskSBSRegisterRecordResultType.waiting),
        // margin: _margin,
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSRegisterRecordResultType.rejected]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSRegisterRecordResultType.rejected),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSRegisterRecordResultType.rejected),
        onPressed: () => _handleChangeResult(context, AppTaskSBSRegisterRecordResultType.rejected),
        // margin: _margin,
      ),
      TLSlidableButton(
        assetName: appTaskSBSRecordData[AppTaskSBSRegisterRecordResultType.approved]!.asset,
        assetColor: _getSlidableAssetColor(context, AppTaskSBSRegisterRecordResultType.approved),
        backgroundColor: _getSlidableBackgroundColor(AppTaskSBSRegisterRecordResultType.approved),
        onPressed: () => _handleChangeResult(context, AppTaskSBSRegisterRecordResultType.approved),
        // margin: _margin,
      ),
    ];
  }

  void _handleChangeResult(BuildContext context, AppTaskSBSRegisterRecordResultType result) {
    if (result == AppTaskSBSRegisterRecordResultType.rejected) {
      return _handleShowDialogReject(context);
    }

    context.bloc<TasksSBSCubit>().changeConsultant(
          widget.projectId,
          widget.consultant.consultantId,
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
          projectId: widget.projectId,
          consultant: widget.consultant,
        ),
      ),
    );
  }

  Color? _getSlidableAssetColor(BuildContext context, AppTaskSBSRegisterRecordResultType result) {
    final theme = context.appTheme?.appTheme;

    return _result == result ? theme?.whiteOnColor : theme?.bordersAndIconsIcons;
  }

  Color? _getSlidableBackgroundColor(AppTaskSBSRegisterRecordResultType result) {
    return _result == result ? appTaskSBSRecordData[result]!.color : null;
  }

  _getResult() {
    final countInitialRecords = widget.consultant.records.length;
    final completedConsultantRecords = widget.completedRecords.values.where(
      (record) => record.consultantId == widget.consultant.consultantId,
    );

    if (completedConsultantRecords.length != countInitialRecords) return;

    final isApprovedAll = completedConsultantRecords
        .every((record) => record.result == AppTaskSBSRegisterRecordResultType.approved);

    if (isApprovedAll) {
      _result = AppTaskSBSRegisterRecordResultType.approved;

      return;
    }

    final isRejectedAll = completedConsultantRecords
        .every((record) => record.result == AppTaskSBSRegisterRecordResultType.rejected);

    if (isRejectedAll) {
      _result = AppTaskSBSRegisterRecordResultType.rejected;

      return;
    }

    final isWaitingAll = completedConsultantRecords
        .every((record) => record.result == AppTaskSBSRegisterRecordResultType.waiting);

    if (isWaitingAll) {
      _result = AppTaskSBSRegisterRecordResultType.waiting;

      return;
    }

    _result = null;
  }
}
