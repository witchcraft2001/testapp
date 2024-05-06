// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

class TlTag extends StatelessWidget {
  final String tag;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin, padding;
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
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? TlDecoration.brTagBase,
        color: backgroundColor ?? context.appTheme!.colors.primary,
      ),
      child: Text(
        tag,
        style: style ?? context.appTheme?.text.w700s12cWhite,
      ),
    );
  }
}
