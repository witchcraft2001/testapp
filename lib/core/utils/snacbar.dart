// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';

SnackBar buildSnackBar({
  TlSnackBarData? data,
  ThemeProvider? theme,
  int seconds = 2,
  bool withIndicator = false,
}) =>
    SnackBar(
      margin: TlSpaces.ph24v16,
      shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
      backgroundColor: _color[data?.result]!(theme?.colors),
      behavior: SnackBarBehavior.floating,
      duration: Duration(seconds: seconds),
      content: Row(
        children: [
          if (withIndicator)
            TlProgressIndicator(
              color: theme?.colors.whiteOnColor,
              size: TlSizes.iconSizeXS,
              margin: TlSpaces.pr16,
            ),
          Expanded(
            child: Text(
              data?.message ?? '',
              style: theme?.text.w600s16cWhite,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
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
