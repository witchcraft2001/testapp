part of '../expandable_panel.dart';

typedef ExpandableBuilder = Widget Function(
  BuildContext context,
  Widget collapsed,
  Widget expanded,
);

/// Determines the placement of the expand/collapse icon in [ExpandablePanel]
enum ExpandablePanelIconPlacement {
  /// The icon is on the start of the header
  start,

  /// The icon is on the end of the header
  end,

  /// The icon is on the right of the header
  right,
}

/// Determines the alignment of the header relative to the expand icon
enum ExpandablePanelHeaderAlignment {
  /// The header and the icon are aligned at their top positions
  top,

  /// The header and the icon are aligned at their center positions
  center,

  /// The header and the icon are aligned at their bottom positions
  bottom,
}

/// Determines vertical alignment of the body
enum ExpandablePanelBodyAlignment {
  /// The body is positioned at the left
  left,

  /// The body is positioned in the center
  center,

  /// The body is positioned at the right
  right,
}

final Map<ExpandablePanelBodyAlignment, Alignment> _bodyAligments = {
  ExpandablePanelBodyAlignment.left: Alignment.topLeft,
  ExpandablePanelBodyAlignment.center: Alignment.topCenter,
  ExpandablePanelBodyAlignment.right: Alignment.topRight,
};

final Map<ExpandablePanelHeaderAlignment, CrossAxisAlignment> _headerAligments = {
  ExpandablePanelHeaderAlignment.top: CrossAxisAlignment.start,
  ExpandablePanelHeaderAlignment.center: CrossAxisAlignment.center,
  ExpandablePanelHeaderAlignment.bottom: CrossAxisAlignment.end,
};
