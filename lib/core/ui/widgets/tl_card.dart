// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';

class TlCard extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? elevation;
  final EdgeInsets? margin;
  final BorderRadius? borderRadius;

  const TlCard({
    super.key,
    required this.child,
    this.backgroundColor,
    this.borderColor,
    this.elevation,
    this.margin,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) => Card(
        shadowColor: AppColors.shadow,
        color: backgroundColor ?? context.appTheme?.appTheme.specialColorMenu,
        elevation: elevation ?? 6.0,
        margin: margin,
        shape: RoundedRectangleBorder(
          side: borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none,
          borderRadius: borderRadius ?? TlDecoration.brBase,
        ),
        child: child,
      );
}
