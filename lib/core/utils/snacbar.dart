// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

SnackBar buildSnackBar({TlSnackBarData? data, AppTheme? theme}) => SnackBar(
      margin: TlSpaces.ph24v16,
      shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
      backgroundColor: _color[data?.result]!(theme),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      content: Text(
        data?.message ?? '',
        style: appFontMedium(16, theme?.whiteOnColor),
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

Map<NotificationSendingResult, Color? Function(AppTheme?)> _color = {
  NotificationSendingResult.success: (AppTheme? theme) => theme?.predictors7,
  NotificationSendingResult.error: (AppTheme? theme) => theme?.warning,
};
