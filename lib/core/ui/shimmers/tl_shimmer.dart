// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shimmer/shimmer.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';

class TlShimmer extends StatelessWidget {
  final Widget child;
  final Color? baseColor, highlightColor;

  const TlShimmer({
    super.key,
    required this.child,
    this.baseColor,
    this.highlightColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme!.colors;

    return Shimmer.fromColors(
      baseColor: baseColor ?? colors.color2,
      highlightColor: highlightColor ?? colors.color1,
      child: child,
    );
  }
}
