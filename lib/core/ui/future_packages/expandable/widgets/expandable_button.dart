part of '../expandable_panel.dart';

class ExpandableButton extends StatelessWidget {
  final Widget? child;
  final ExpandableParams? params;

  const ExpandableButton({
    super.key,
    this.child,
    this.params,
  });

  @override
  Widget build(BuildContext context) {
    final controller = ExpandableController.of(context, required: true);
    final params = ExpandableParams.withDefaults(this.params, context);

    if (params.isInkWell!) {
      return InkWell(
        onTap: controller?.toggle,
        borderRadius: params.inkWellBorderRadius!,
        child: child,
      );
    }

    return GestureDetector(
      onTap: controller?.toggle,
      child: child,
    );
  }
}
