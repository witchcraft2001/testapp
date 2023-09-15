// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/domain/business_card_locale.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class CardsLogo extends StatelessWidget {
  final BusinessCardLocale locale;
  final EdgeInsets? padding;

  const CardsLogo({super.key, required this.locale, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: _getLogo(context),
    );
  }

  Widget _getLogo(BuildContext context) {
    if (context.appTheme?.isDarkTheme == true) {
      return SvgPicture.asset(locale == BusinessCardLocale.global
          ? TlAssets.imageTlLogoGlobalDark
          : TlAssets.imageTlLogoRuDark);
    }

    return SvgPicture.asset(
      locale == BusinessCardLocale.global ? TlAssets.imageTlLogoGlobal : TlAssets.imageTlLogoRu,
    );
  }
}
