part of '../expandable_panel.dart';

/// Controls the state (expanded or collapsed) of one or more [ExpandableContent].
/// The controller should be provided to [ExpandableContent] via [ExpandableNotifier].
class ExpandableController extends ValueNotifier<bool> {
  ExpandableController({
    bool? isInitialExpanded,
  }) : super(isInitialExpanded ?? false);

  /// Returns [true] if the state is expanded, [false] if collapsed.
  bool get expanded => value;

  /// Sets the expanded state.
  set expanded(bool exp) {
    value = exp;
  }

  /// Sets the expanded state to the opposite of the current state.
  void toggle() {
    expanded = !expanded;
  }

  static ExpandableController? of(
    BuildContext context, {
    bool rebuildOnChange = true,
    bool required = false,
  }) {
    final notifier = rebuildOnChange
        ? context.dependOnInheritedWidgetOfExactType<_ExpandableControllerNotifier>()
        : context.findAncestorWidgetOfExactType<_ExpandableControllerNotifier>();

    assert(
      notifier != null || !required,
      'ExpandableNotifier is not found in widget tree',
    );

    return notifier?.notifier;
  }
}
