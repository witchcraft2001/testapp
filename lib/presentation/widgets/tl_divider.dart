// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TlDivider extends StatelessWidget {
  final Color? color;
  final EdgeInsets? padding;
  final double height;

  const TlDivider({
    super.key,
    this.color,
    this.padding,
    this.height = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Divider(
        color: color ?? context.appTheme?.appTheme.bordersAndIconsStrokeShape,
        height: height,
      ),
    );
  }
}
