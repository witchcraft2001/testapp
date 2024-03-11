// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/app_text_theme.dart';

enum AppBtnStyle { base, outline, none, leadingBase, leadingNone }

enum AppBtnFormat { base, small, large, square, compact, rounded }

enum AppBtnType { primary, secondary, danger, info, warning, success, action }

Color getButtonColorByType({
  required AppBtnType type,
  AppThemeColors? colors,
}) {
  final colorsByType = {
    AppBtnType.primary: colors?.primary,
    AppBtnType.secondary: colors?.brAndIcons,
    AppBtnType.danger: colors?.danger,
    AppBtnType.info: colors?.accent,
    AppBtnType.warning: colors?.warning,
    AppBtnType.success: colors?.predictors7,
    AppBtnType.action: colors?.whiteOnColor,
  };

  return colorsByType[type]!;
}

Color getButtonForegroundColorByType({
  required AppBtnType type,
  AppThemeColors? colors,
}) {
  if (type == AppBtnType.action) {
    return colors!.textBlack;
  }

  return getButtonColorByType(type: type, colors: colors);
}

TextStyle getButtonTextStyleByFormat({
  required AppBtnFormat format,
  Color? textColor,
}) {
  final sizes = {
    AppBtnFormat.small: AppTextStyle.font(fontSize: 13.0, color: textColor),
    AppBtnFormat.compact: AppTextStyle.fontW700(fontSize: 12.0, color: textColor),
    AppBtnFormat.base: AppTextStyle.fontW600(fontSize: 16.0, color: textColor),
    AppBtnFormat.large: AppTextStyle.fontW600(fontSize: 16.0, color: textColor),
    AppBtnFormat.rounded: AppTextStyle.font(fontSize: 17.0, color: textColor),
  };

  return sizes[format]!;
}
