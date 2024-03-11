// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/core/ui/widgets/tl_tag.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/task_card_content_block.dart';
import 'package:terralinkapp/generated/l10n.dart';

class TaskSbsProjectCard extends StatefulWidget {
  final int projectId;
  final String? projectName, company, am, pm;
  final bool isDelegated;

  const TaskSbsProjectCard({
    super.key,
    required this.projectId,
    this.projectName,
    this.company,
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
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    final isCompany = widget.company != null;
    final isAM = widget.am != null;
    final isPM = widget.pm != null;

    return TlCard(
      backgroundColor: colors?.primary,
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
                  tag: S.current.tasksSbsDelegated,
                  backgroundColor: Colors.black.withOpacity(0.2),
                  margin: TlSpaces.pb12,
                ),
              Padding(
                padding: TlSpaces.pb16,
                child: Text(
                  '${widget.projectId} / ${widget.projectName ?? ''}',
                  style: text?.w600s16cWhite,
                ),
              ),
              if (!_isShowMore && (isCompany || isAM || isPM))
                Row(
                  children: [
                    Text(
                      S.current.tasksSbsProject,
                      style: text?.w700s12cWhite,
                    ),
                    Padding(
                      padding: TlSpaces.pl8,
                      child: TlSvg(
                        assetName: TlAssets.iconArrowRight,
                        size: TlSizes.iconSizeXXS,
                        color: colors?.whiteOnColor,
                      ),
                    ),
                  ],
                ),
              if (_isShowMore && (isCompany || isAM || isPM))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (isCompany)
                      TaskCardContentBlock(
                        title: S.current.tasksSbsCompany,
                        value: widget.company!,
                        padding: TlSpaces.pb16,
                      ),
                    if (isAM)
                      TaskCardContentBlock(
                        title: S.current.tasksSbsAM,
                        value: widget.am!,
                        padding: TlSpaces.pb16,
                      ),
                    if (isPM)
                      TaskCardContentBlock(
                        title: S.current.tasksSbsPM,
                        value: widget.pm!,
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
