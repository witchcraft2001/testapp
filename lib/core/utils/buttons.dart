// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';

enum AppBtnStyle { base, outline, none, leadingBase, leadingNone }

enum AppBtnFormat { base, small, large, square }

enum AppBtnType { primary, secondary, danger, info, warning, success }

Color getButtonColorByType({
  required AppBtnType type,
  AppTheme? theme,
}) {
  final colors = {
    AppBtnType.primary: theme?.primary,
    AppBtnType.secondary: theme?.second,
    AppBtnType.danger: theme?.danger,
    AppBtnType.info: theme?.info,
    AppBtnType.warning: theme?.warning,
    AppBtnType.success: theme?.predictors7,
  };

  return colors[type]!;
}

TextStyle getButtonTextStyleByFormat({
  required AppBtnFormat format,
  Color? textColor,
}) {
  final sizes = {
    AppBtnFormat.small: appFontRegular(13.0, textColor),
    AppBtnFormat.base: appFontMedium(16.0, textColor),
    AppBtnFormat.large: appFontMedium(16.0, textColor),
  };

  return sizes[format]!;
}
