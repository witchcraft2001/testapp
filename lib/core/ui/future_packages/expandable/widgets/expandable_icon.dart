part of '../expandable_panel.dart';

class ExpandableIcon extends StatefulWidget {
  final ExpandableParams? params;

  const ExpandableIcon({
    super.key,
    this.params,
  });

  @override
  State<ExpandableIcon> createState() => _ExpandableIconState();
}

class _ExpandableIconState extends State<ExpandableIcon> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? animation;
  ExpandableParams? params;
  ExpandableController? controller;

  @override
  void initState() {
    super.initState();

    final params = ExpandableParams.withDefaults(
      widget.params,
      context,
      rebuildOnChange: false,
    );

    animationController = AnimationController(duration: params.animationDuration, vsync: this);
    animation = animationController!.drive(
      Tween<double>(begin: 0.0, end: 1.0).chain(
        CurveTween(curve: params.sizeCurve!),
      ),
    );

    controller = ExpandableController.of(
      context,
      rebuildOnChange: false,
      required: true,
    );
    controller?.addListener(_expandedStateChanged);

    if (controller?.expanded ?? true) {
      animationController!.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(ExpandableIcon oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.params != oldWidget.params) {
      params = null;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final controller2 = ExpandableController.of(
      context,
      rebuildOnChange: false,
      required: true,
    );

    if (controller2 != controller) {
      controller?.removeListener(_expandedStateChanged);
      controller = controller2;
      controller?.addListener(_expandedStateChanged);

      if (controller?.expanded ?? true) {
        animationController!.value = 1.0;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final params = ExpandableParams.withDefaults(widget.params, context);

    return Padding(
      padding: params.iconPadding!,
      child: AnimatedBuilder(
        animation: animation!,
        builder: (context, child) {
          final showSecondIcon =
              params.collapseIcon! != params.expandIcon! && animationController!.value >= 0.5;

          return Transform.rotate(
            angle: params.iconRotationAngle! *
                (showSecondIcon ? -(1.0 - animationController!.value) : animationController!.value),
            child: Icon(
              showSecondIcon ? params.collapseIcon! : params.expandIcon!,
              color: params.iconColor!,
              size: params.iconSize!,
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    controller?.removeListener(_expandedStateChanged);
    animationController?.dispose();
    super.dispose();
  }

  void _expandedStateChanged() {
    if (controller!.expanded &&
        const [AnimationStatus.dismissed, AnimationStatus.reverse]
            .contains(animationController!.status)) {
      animationController!.forward();
    } else if (!controller!.expanded &&
        const [AnimationStatus.completed, AnimationStatus.forward]
            .contains(animationController!.status)) {
      animationController!.reverse();
    }
  }
}
