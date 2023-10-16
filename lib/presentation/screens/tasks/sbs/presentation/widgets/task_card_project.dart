part of '../tasks_sbs_screen.dart';

class _TaskCardProject extends StatefulWidget {
  final ApiTaskSBSDao task;

  const _TaskCardProject({
    required this.task,
  });

  @override
  State<_TaskCardProject> createState() => _TaskCardProjectState();
}

class _TaskCardProjectState extends State<_TaskCardProject> {
  bool _isShowMore = false;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return TlCard(
      backgroundColor: theme?.primary,
      margin: TlSpaces.p24,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        onTap: () => setState(() => _isShowMore = !_isShowMore),
        child: Padding(
          padding: TlSpaces.p24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: TlSpaces.pb16,
                child: Text(
                  '${widget.task.projectSbsId} / ${widget.task.projectName}',
                  style: ThemeProvider.bodyMedium.copyWith(
                    color: theme?.whiteOnColor,
                  ),
                ),
              ),
              if (!_isShowMore)
                Row(
                  children: [
                    Text(
                      S.current.tasksSBSProject,
                      style: appFontSemi(12, theme?.whiteOnColor),
                    ),
                    Padding(
                      padding: TlSpaces.pl8,
                      child: TlSvg(
                        assetName: TlAssets.iconArrowRight,
                        size: TlSizes.iconSizeXXS,
                        color: theme?.whiteOnColor,
                      ),
                    ),
                  ],
                ),
              if (_isShowMore)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContentBlock(
                      title: S.current.tasksSBSCompany,
                      value: widget.task.company,
                      padding: TlSpaces.pb16,
                    ),
                    _buildContentBlock(
                      title: S.current.tasksSBSAM,
                      value: widget.task.amName,
                      padding: TlSpaces.pb16,
                    ),
                    _buildContentBlock(
                      title: S.current.tasksSBSPM,
                      value: widget.task.pmName,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentBlock({
    required String title,
    required String value,
    EdgeInsets? padding,
  }) {
    final theme = context.appTheme?.appTheme;

    return TaskCardContentBlock(
      title: title,
      titleColor: theme?.whiteOnColor,
      value: value,
      valueColor: theme?.whiteOnColor,
      padding: padding,
    );
  }
}
