// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

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
          side: BorderSide.none,
          borderRadius: borderRadius ?? TlDecoration.brBase,
        ),
        child: child,
      );
}
