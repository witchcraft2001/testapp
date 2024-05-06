// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';

class TlSplash extends StatelessWidget {
  final String message;
  final bool isAbout;

  const TlSplash({
    super.key,
    this.message = Constants.appTitle,
    this.isAbout = false,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return TlEmptyData(
      message: message,
      messageStyle: message == Constants.appTitle ? context.appTheme?.text.w400s32cMain : null,
      assetWidget: GestureDetector(
        onDoubleTap: isAbout ? () => _handleGoToApiSettings(context) : null,
        child: TlSvg(
          assetName: TlAssets.imageAppLogo,
          size: TlSizes.appLogoSize,
          color: colors?.primary,
        ),
      ),
    );
  }

  void _handleGoToApiSettings(BuildContext context) => appNavigationService.goNamed(
        context,
        AppRoutes.profileAboutSettings.name,
      );
}
