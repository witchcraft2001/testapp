// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/loaders/tl_splash_new_year.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';

const _endDate = 1705266000000; // 2024-01-15 00:00:00.000
final _isNotExpired = DateTime.now().millisecondsSinceEpoch < _endDate;

class TlSplash extends StatelessWidget {
  final String message;

  const TlSplash({
    super.key,
    this.message = Constants.appTitle,
  });

  @override
  Widget build(BuildContext context) {
    if (_isNotExpired) return const TlSplashNewYear();

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
