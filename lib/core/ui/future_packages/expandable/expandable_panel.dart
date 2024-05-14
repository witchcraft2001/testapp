// Dart imports:
import 'dart:math' as math;

// Flutter imports:
import 'package:flutter/material.dart';

part 'consts/common.dart';
part 'entities/expandable_params.dart';
part 'entities/expandable_controller.dart';
part 'notifiers/expandable_notifier.dart';
part 'widgets/expandable_with_params.dart';
part 'widgets/expandable_button.dart';
part 'widgets/expandable_icon.dart';
part 'widgets/expandable_content.dart';
part 'widgets/expandable_scroll_on_expand.dart';

class ExpandablePanel extends StatelessWidget {
  final Widget? header;
  final Widget collapsed;
  final Widget expanded;
  final ExpandableBuilder? builder;
  final ExpandableController? controller;
  final ExpandableParams? params;

  const ExpandablePanel({
    super.key,
    required this.collapsed,
    required this.expanded,
    this.header,
    this.controller,
    this.builder,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    final panel = header != null ? buildWithHeader(context) : buildBody(context);

    if (controller != null) {
      return ExpandableNotifier(
        controller: controller,
        child: panel,
      );
    } else {
      final controller = ExpandableController.of(
        context,
        rebuildOnChange: false,
      );

      if (controller == null) {
        return ExpandableNotifier(child: panel);
      }

      return panel;
    }
  }

  Widget buildHeaderRow(BuildContext context) {
    final params = ExpandableParams.withDefaults(this.params, context);

    Widget wrapWithExpandableButton({
      required Widget? widget,
      required bool wrap,
    }) {
      return wrap ? ExpandableButton(params: params, child: widget) : widget ?? Container();
    }

    if (!params.hasIcon!) {
      return wrapWithExpandableButton(
        widget: header,
        wrap: params.isTapHeaderToExpand!,
      );
    } else {
      final iconButtom = wrapWithExpandableButton(
        widget: ExpandableIcon(params: params),
        wrap: !params.isTapHeaderToExpand!,
      );

      final rowChildren = [
        Expanded(child: header ?? Container()),
        iconButtom,
      ];

      final headerAligment = _headerAligments[params.headerAlignment] ?? CrossAxisAlignment.center;

      if (params.iconPlacement! == ExpandablePanelIconPlacement.right) {
        return wrapWithExpandableButton(
          widget: Row(
            crossAxisAlignment: headerAligment,
            children: [
              const Spacer(),
              if (header != null) header!,
              iconButtom,
              const Spacer(),
            ],
          ),
          wrap: params.isTapHeaderToExpand!,
        );
      }

      return wrapWithExpandableButton(
        widget: Row(
          crossAxisAlignment: headerAligment,
          children: params.iconPlacement! == ExpandablePanelIconPlacement.end
              ? rowChildren
              : rowChildren.reversed.toList(),
        ),
        wrap: params.isTapHeaderToExpand!,
      );
    }
  }

  Widget buildBody(BuildContext context) {
    final params = ExpandableParams.withDefaults(this.params, context);

    Widget wrapBody(Widget child, bool tap) {
      final widget = Align(
        alignment: _bodyAligments[params.bodyAlignment!]!,
        child: child,
      );

      if (!tap) return widget;

      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: widget,
        onTap: () {
          final controller = ExpandableController.of(context);
          controller?.toggle();
        },
      );
    }

    final builder = this.builder ??
        (context, collapsed, expanded) {
          return ExpandableContent(
            collapsed: collapsed,
            expanded: expanded,
            params: params,
          );
        };

    return builder(
      context,
      wrapBody(collapsed, params.isTapBodyToExpand!),
      wrapBody(expanded, params.isTapBodyToCollapse!),
    );
  }

  Widget buildWithHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildHeaderRow(context),
        buildBody(context),
      ],
    );
  }
}
