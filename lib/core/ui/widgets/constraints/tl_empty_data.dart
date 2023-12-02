// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';

class TlEmptyData extends StatelessWidget {
  final String message;
  final String? description;
  final TextStyle? messageStyle;
  final String? asset;
  final Widget? assetWidget;
  final String? buttonTitle;
  final AppBtnType? buttonType;
  final VoidCallback? onPressed;
  final Future<void> Function()? onRefresh;

  const TlEmptyData({
    super.key,
    required this.message,
    this.description,
    this.messageStyle,
    this.asset,
    this.assetWidget,
    this.buttonTitle,
    this.buttonType,
    this.onPressed,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    final emptyWidget = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (assetWidget != null) assetWidget!,
          if (asset != null) SvgPicture.asset(asset!),
          Padding(
            padding: TlSpaces.p24,
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: messageStyle ??
                  ThemeProvider.bodyLarge.copyWith(
                    color: theme?.textMain,
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          if (description != null)
            Padding(
              padding: TlSpaces.ph24b24,
              child: Text(
                description!,
                textAlign: TextAlign.center,
                style: appFontRegular(16, theme?.second),
              ),
            ),
          if (onPressed != null && buttonTitle != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TlButton(
                  title: buttonTitle,
                  type: buttonType ?? AppBtnType.info,
                  onPressed: onPressed,
                  style: AppBtnStyle.base,
                ),
              ],
            ),
        ],
      ),
    );

    return onRefresh != null
        ? TlRefresh(
            onRefresh: onRefresh!,
            withLayout: true,
            child: emptyWidget,
          )
        : emptyWidget;
  }
}
