// Flutter imports:
import 'package:flutter/material.dart';

class FeatureGuard extends StatefulWidget {
  const FeatureGuard({
    required this.isAvailable,
    required this.builder,
    this.placeHolder,
    super.key,
  });
  final Future<bool> Function() isAvailable;
  final Widget Function(BuildContext context) builder;
  final Widget Function(BuildContext context)? placeHolder;

  @override
  State<FeatureGuard> createState() => _FeatureGuardState();
}

class _FeatureGuardState extends State<FeatureGuard> {
  bool _isAvailable = false;

  @override
  void initState() {
    _checkAvailable();
    super.initState();
  }

  Future<void> _checkAvailable() async {
    final bool isAvailable = await widget.isAvailable();

    if (context.mounted) {
      setState(() {
        _isAvailable = isAvailable;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isAvailable) {
      return widget.builder(context);
    }

    return widget.placeHolder?.call(context) ?? const SizedBox();
  }
}
