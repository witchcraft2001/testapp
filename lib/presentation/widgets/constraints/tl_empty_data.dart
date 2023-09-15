// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';

class TlEmptyData extends StatelessWidget {
  final String message;
  final String? asset;
  final Widget? assetWidget;
  final String? buttonTitle;
  final AppBtnType? buttonType;
  final VoidCallback? onPressed;

  const TlEmptyData({
    super.key,
    required this.message,
    this.asset,
    this.assetWidget,
    this.buttonTitle,
    this.buttonType,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (assetWidget != null) assetWidget!,
          if (asset != null) SvgPicture.asset(asset!),
          Padding(
            padding: TlSpaces.pt24,
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: ThemeProvider.bodyLarge.copyWith(
                color: context.appTheme?.appTheme.textMain,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (onPressed != null && buttonTitle != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TlButton(
                  padding: TlSpaces.pt24,
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
  }
}
