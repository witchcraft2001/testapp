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
  final EdgeInsets? margin;

  const TlTag({
    super.key,
    required this.tag,
    this.backgroundColor,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? TlSpaces.pb16,
      padding: TlSpaces.ph16v8,
      decoration: BoxDecoration(
        borderRadius: TlDecoration.brTag,
        color: backgroundColor ?? context.appTheme?.appTheme.primary,
      ),
      child: Text(
        tag,
        style: appFontSemiMedium(13, context.appTheme?.appTheme.whiteOnColor),
      ),
    );
  }
}
