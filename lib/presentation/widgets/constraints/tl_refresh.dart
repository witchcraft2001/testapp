// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TlRefresh extends StatefulWidget {
  final GlobalKey<RefreshIndicatorState>? keyRefresh;
  final Widget child;
  final Future<void> Function() onRefresh;

  const TlRefresh({
    super.key,
    this.keyRefresh,
    required this.onRefresh,
    required this.child,
  });

  @override
  State<TlRefresh> createState() => _TlRefreshState();
}

class _TlRefreshState extends State<TlRefresh> {
  @override
  Widget build(BuildContext context) => RefreshIndicator(
        key: widget.keyRefresh,
        onRefresh: widget.onRefresh,
        color: context.appTheme?.appTheme.primary,
        child: widget.child,
      );
}
