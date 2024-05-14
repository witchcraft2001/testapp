// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/future_packages/expandable/expandable_panel.dart';

class TlExpandable extends StatelessWidget {
  final Widget expanded;
  final Widget? collapsed;
  final String? title;
  final bool? isInitialExpanded, isTapHeaderToExpand;
  final ExpandablePanelIconPlacement? iconPlacement;
  final EdgeInsets? iconPadding, wrapperPadding;
  final Decoration? wrapperDecoration;

  const TlExpandable({
    super.key,
    required this.expanded,
    this.collapsed,
    this.title,
    this.isInitialExpanded,
    this.isTapHeaderToExpand,
    this.iconPlacement,
    this.iconPadding,
    this.wrapperPadding,
    this.wrapperDecoration,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    return Container(
      padding: wrapperPadding,
      decoration: wrapperDecoration,
      child: ExpandableNotifier(
        isInitialExpanded: isInitialExpanded,
        child: ExpandablePanel(
          header: title != null
              ? Text(
                  title!,
                  style: text?.w400s13cSignatures,
                )
              : null,
          collapsed: collapsed ?? const SizedBox.shrink(),
          expanded: expanded,
          params: ExpandableParams(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            isTapHeaderToExpand: isTapHeaderToExpand,
            hasIcon: true,
            iconPlacement: iconPlacement,
            iconColor: colors?.brAndIcons,
            iconPadding: iconPadding,
          ),
        ),
      ),
    );
  }
}
