part of '../expandable_panel.dart';

class ExpandableWithParams extends StatelessWidget {
  final ExpandableParams params;
  final Widget child;

  const ExpandableWithParams({
    super.key,
    required this.params,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    _ExpandableParamsNotifier? n =
        context.dependOnInheritedWidgetOfExactType<_ExpandableParamsNotifier>();

    return _ExpandableParamsNotifier(
      params: ExpandableParams.combine(params, n?.params),
      child: child,
    );
  }
}
