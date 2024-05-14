part of '../expandable_panel.dart';

class ExpandableContent extends StatelessWidget {
  final Widget collapsed;
  final Widget expanded;
  final ExpandableController? controller;
  final ExpandableParams? params;

  const ExpandableContent({
    super.key,
    required this.collapsed,
    required this.expanded,
    this.controller,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    final controller = this.controller ?? ExpandableController.of(context, required: true);
    final params = ExpandableParams.withDefaults(this.params, context);

    return AnimatedCrossFade(
      alignment: params.alignment!,
      firstChild: collapsed,
      secondChild: expanded,
      firstCurve: Interval(
        params.collapsedFadeStart,
        params.collapsedFadeEnd,
        curve: params.fadeCurve!,
      ),
      secondCurve: Interval(
        params.expandedFadeStart,
        params.expandedFadeEnd,
        curve: params.fadeCurve!,
      ),
      sizeCurve: params.sizeCurve!,
      crossFadeState:
          controller?.expanded ?? true ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: params.animationDuration!,
    );
  }
}
