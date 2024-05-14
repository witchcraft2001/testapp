part of '../expandable_panel.dart';

class ExpandableNotifier extends StatefulWidget {
  final ExpandableController? controller;
  final bool? isInitialExpanded;
  final Widget child;

  const ExpandableNotifier({
    super.key,
    required this.child,
    this.controller, // Если контроллер не указан, он создается с начальным значением isInitialExpanded
    this.isInitialExpanded, // Исходное развернутое состояние. Не следует использовать вместе с controller
  }) : assert(!(controller != null && isInitialExpanded != null));

  @override
  State<ExpandableNotifier> createState() => _ExpandableNotifierState();
}

class _ExpandableNotifierState extends State<ExpandableNotifier> {
  ExpandableController? controller;
  ExpandableParams? params;

  @override
  void initState() {
    super.initState();
    controller = widget.controller ??
        ExpandableController(isInitialExpanded: widget.isInitialExpanded ?? false);
  }

  @override
  void didUpdateWidget(ExpandableNotifier oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.controller != oldWidget.controller && widget.controller != null) {
      setState(() {
        controller = widget.controller;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final cn = _ExpandableControllerNotifier(
      controller: controller,
      child: widget.child,
    );

    return params != null
        ? _ExpandableParamsNotifier(
            params: params,
            child: cn,
          )
        : cn;
  }
}

/// Делает [ExpandableController] доступным в дереве виджетов.
/// Полезно для синхронизации нескольких виджетов [ExpandableContent] с одним контроллером.
class _ExpandableControllerNotifier extends InheritedNotifier<ExpandableController> {
  const _ExpandableControllerNotifier({
    required ExpandableController? controller,
    required Widget child,
  }) : super(
          notifier: controller,
          child: child,
        );
}

/// Делает [ExpandableController] доступным в дереве виджетов.
/// Полезно для синхронизации нескольких виджетов [ExpandableContent] с одним контроллером.
class _ExpandableParamsNotifier extends InheritedWidget {
  final ExpandableParams? params;

  const _ExpandableParamsNotifier({
    required this.params,
    required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return !(oldWidget is _ExpandableParamsNotifier && oldWidget.params == params);
  }
}
