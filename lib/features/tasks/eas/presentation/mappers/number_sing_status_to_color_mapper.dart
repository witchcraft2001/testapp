// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';

extension NumberSingStatusToColorMapper on NumberSingStatus {
  Color toColor(BuildContext context) {
    final AppTheme? appTheme = context.appTheme?.appTheme;
    switch (this) {
      case NumberSingStatus.negative:
        return appTheme?.danger ?? AppColors.danger;
      case NumberSingStatus.positive:
        return appTheme?.success ?? AppColors.success;
      case NumberSingStatus.unknown:
        return appTheme?.primary ?? AppColors.primary;
    }
  }
}
