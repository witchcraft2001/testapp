// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TlTag extends StatelessWidget {
  final String tag;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  final TextStyle? style;

  const TlTag({
    super.key,
    required this.tag,
    this.backgroundColor,
    this.borderRadius,
    this.margin,
    this.padding = TlSpaces.ph12v4,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme!.appTheme;

    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? TlDecoration.brTagBase,
        color: backgroundColor ?? theme.primary,
      ),
      child: Text(
        tag,
        style: style ?? appFontSemi(12, theme.whiteOnColor),
      ),
    );
  }
}
