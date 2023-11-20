// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/task_card_content_block.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';
import 'package:terralinkapp/presentation/widgets/tl_tag.dart';

class TaskSbsProjectCard extends StatefulWidget {
  final int projectId;
  final String projectName, company, am, pm;
  final bool isDelegated;

  const TaskSbsProjectCard({
    super.key,
    required this.projectId,
    required this.projectName,
    required this.company,
    required this.am,
    required this.pm,
    this.isDelegated = false,
  });

  @override
  State<TaskSbsProjectCard> createState() => _TaskSbsProjectCardState();
}

class _TaskSbsProjectCardState extends State<TaskSbsProjectCard> {
  bool _isShowMore = false;

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return TlCard(
      backgroundColor: theme?.primary,
      margin: TlSpaces.ph24t12b24,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        onTap: () => setState(() => _isShowMore = !_isShowMore),
        child: Padding(
          padding: TlSpaces.p24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.isDelegated)
                TlTag(
                  tag: S.current.delegated,
                  backgroundColor: Colors.black.withOpacity(0.2),
                  margin: TlSpaces.pb12,
                ),
              Padding(
                padding: TlSpaces.pb16,
                child: Text(
                  '${widget.projectId} / ${widget.projectName}',
                  style: ThemeProvider.bodyMedium.copyWith(
                    color: theme?.whiteOnColor,
                  ),
                ),
              ),
              if (!_isShowMore)
                Row(
                  children: [
                    Text(
                      S.current.tasksSbsProject,
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
                      title: S.current.tasksSbsCompany,
                      value: widget.company,
                      padding: TlSpaces.pb16,
                    ),
                    _buildContentBlock(
                      title: S.current.tasksSbsAM,
                      value: widget.am,
                      padding: TlSpaces.pb16,
                    ),
                    _buildContentBlock(
                      title: S.current.tasksSbsPM,
                      value: widget.pm,
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
