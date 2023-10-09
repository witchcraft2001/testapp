// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shimmer/shimmer.dart';

// Project imports:
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TlShimmer extends StatelessWidget {
  final Widget child;

  const TlShimmer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme!.appTheme;

    return Shimmer.fromColors(
      baseColor: theme.color2,
      highlightColor: theme.color1,
      child: child,
    );
  }
}
