// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
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
    final theme = context.appTheme?.appTheme;

    return TlEmptyData(
      message: message,
      messageStyle: message == Constants.appTitle ? appFontRegular(32, theme?.textMain) : null,
      assetWidget: TlSvg(
        assetName: TlAssets.imageAppLogo,
        size: TlSizes.appLogoSize,
        color: theme?.primary,
      ),
    );
  }
}
