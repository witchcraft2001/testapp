// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

SnackBar buildSnackBar({TlSnackBarData? data, ThemeProvider? theme}) => SnackBar(
      margin: TlSpaces.ph24v16,
      shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
      backgroundColor: _color[data?.result]!(theme?.colors),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      content: Text(
        data?.message ?? '',
        style: theme?.text.w600s16cWhite,
      ),
    );

class TlSnackBarData {
  final NotificationSendingResult result;
  final String message;

  TlSnackBarData({
    required this.message,
    this.result = NotificationSendingResult.error,
  });
}

Map<NotificationSendingResult, Color? Function(AppThemeColors?)> _color = {
  NotificationSendingResult.success: (AppThemeColors? theme) => theme?.predictors7,
  NotificationSendingResult.error: (AppThemeColors? theme) => theme?.warning,
};
