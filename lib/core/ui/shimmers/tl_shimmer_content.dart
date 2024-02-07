// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';

class TlShimmerContent extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final Color? color;

  const TlShimmerContent({
    super.key,
    this.margin,
    this.padding,
    this.borderRadius,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme!.appTheme;

    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? TlDecoration.brBase,
        color: color ?? theme.color2,
      ),
      height: height,
      width: width,
    );
  }
}
