// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';

class TlRefresh extends StatefulWidget {
  final GlobalKey<RefreshIndicatorState>? keyRefresh;
  final Widget child;
  final Future<void> Function() onRefresh;
  final bool withLayout;

  const TlRefresh({
    super.key,
    this.keyRefresh,
    required this.onRefresh,
    required this.child,
    this.withLayout = false,
  });

  @override
  State<TlRefresh> createState() => _TlRefreshState();
}

class _TlRefreshState extends State<TlRefresh> {
  @override
  Widget build(BuildContext context) {
    Widget? layout;

    if (widget.withLayout) {
      layout = LayoutBuilder(
        builder: (_, constraints) => SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            child: widget.child,
          ),
        ),
      );
    }

    return RefreshIndicator(
      key: widget.keyRefresh,
      onRefresh: widget.onRefresh,
      color: context.appTheme?.appTheme.primary,
      child: layout ?? widget.child,
    );
  }
}
