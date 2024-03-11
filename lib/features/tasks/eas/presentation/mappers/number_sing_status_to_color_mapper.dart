// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';

extension NumberSingStatusToColorMapper on NumberSingStatus {
  Color toColor(BuildContext context) {
    final AppThemeColors? colors = context.appTheme?.colors;

    switch (this) {
      case NumberSingStatus.negative:
        return colors?.danger ?? AppColors.stDanger;
      case NumberSingStatus.positive:
        return colors?.success ?? AppColors.stSuccess;
      case NumberSingStatus.unknown:
        return colors?.primary ?? AppColors.stPrimary;
    }
  }
}
