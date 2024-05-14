part of '../expandable_panel.dart';

class ExpandableScrollOnExpand extends StatefulWidget {
  final Widget child;
  final bool scrollOnExpand;
  final bool scrollOnCollapse;
  final ExpandableParams? params;

  const ExpandableScrollOnExpand({
    super.key,
    required this.child,
    this.scrollOnExpand = true,
    this.scrollOnCollapse = true,
    this.params,
  });

  @override
  State<ExpandableScrollOnExpand> createState() => _ExpandableScrollOnExpandState();
}

class _ExpandableScrollOnExpandState extends State<ExpandableScrollOnExpand> {
  ExpandableController? _controller;
  int _isAnimating = 0;
  BuildContext? _lastContext;
  ExpandableParams? _params;

  Duration get _animationDuration {
    return _params?.scrollAnimationDuration ?? ExpandableParams.defaults.animationDuration!;
  }

  @override
  void initState() {
    super.initState();

    _controller = ExpandableController.of(
      context,
      rebuildOnChange: false,
      required: true,
    );
    _controller?.addListener(_expandedStateChanged);
  }

  @override
  void didUpdateWidget(ExpandableScrollOnExpand oldWidget) {
    super.didUpdateWidget(oldWidget);

    final newController = ExpandableController.of(
      context,
      rebuildOnChange: false,
      required: true,
    );

    if (newController != _controller) {
      _controller?.removeListener(_expandedStateChanged);
      _controller = newController;
      _controller?.addListener(_expandedStateChanged);
    }
  }

  @override
  Widget build(BuildContext context) {
    _lastContext = context;
    _params = ExpandableParams.withDefaults(widget.params, context);

    return widget.child;
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.removeListener(_expandedStateChanged);
  }

  void _expandedStateChanged() {
    if (_params != null) {
      _isAnimating++;
      Future.delayed(_animationDuration + const Duration(milliseconds: 10), _animationComplete);
    }
  }

  void _animationComplete() {
    _isAnimating--;
    if (_isAnimating == 0 && _lastContext != null && mounted) {
      if ((_controller?.expanded ?? true && widget.scrollOnExpand) ||
          (!(_controller?.expanded ?? true) && widget.scrollOnCollapse)) {
        _lastContext?.findRenderObject()?.showOnScreen(duration: _animationDuration);
      }
    }
  }
}
