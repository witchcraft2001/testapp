// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/domain/business_card.dart';
import 'package:terralinkapp/domain/business_card_locale.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/business_cards/show/widgets/business_card_qr_code.dart';
import 'package:terralinkapp/presentation/screens/business_cards/show/widgets/cards_logo.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/base_text_cell.dart';

class BusinessCardWidget extends StatelessWidget {
  final BusinessCard card;
  final String? vCardContent;
  final Constants _constants = getIt<Constants>();

  BusinessCardWidget({super.key, required this.card, this.vCardContent});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    double qrSize;
    double padding = TlSpaces.sp48;
    double spaces = TlSpaces.sp48;
    if (height < 800) {
      qrSize = 130.0;
      padding = TlSpaces.sp16;
      spaces = TlSpaces.sp16;
    } else if (height > 1100) {
      qrSize = 300.0;
    } else {
      qrSize = 200.0;
      spaces = TlSpaces.sp32;
    }

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: padding, right: TlSpaces.sp16, left: TlSpaces.sp16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CardsLogo(
                  locale: card.locale,
                  padding: TlSpaces.pt16,
                ),
                Padding(
                  padding: EdgeInsets.only(top: spaces),
                  child: Column(
                    children: [
                      Text(
                        card.firstName,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: ThemeProvider.headlineMedium.copyWith(
                          color: context.appTheme?.appTheme.textMain,
                        ),
                      ),
                      Text(
                        card.lastName,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: ThemeProvider.headlineMedium.copyWith(
                          color: context.appTheme?.appTheme.textMain,
                        ),
                      ),
                      Padding(
                        padding: TlSpaces.pt4,
                        child: Text(
                          card.position,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          style: ThemeProvider.bodyMedium.copyWith(
                            color: context.appTheme?.appTheme.textSignatures,
                            fontWeight: AppFontWeight.semimedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: spaces, bottom: spaces),
                  child: BusinessCardQrCode(
                    card: card,
                    size: qrSize,
                    vCardContent: vCardContent,
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: padding, right: TlSpaces.sp16, left: TlSpaces.sp16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _getLabelWithIcon(context, card.email, TlAssets.iconSms, maxLines: 2),
                  _getLabelWithIcon(context, card.phone, TlAssets.iconMonitor),
                  _getLabelWithIcon(
                    context,
                    card.locale == BusinessCardLocale.global
                        ? _constants.getGlobalWebPage()
                        : _constants.getRuWebPage(),
                    TlAssets.iconGlobalSearch,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getLabelWithIcon(
    BuildContext context,
    String title,
    String iconAsset, {
    int maxLines = 1,
  }) {
    return title.isNotEmpty
        ? Padding(
            padding: TlSpaces.p8,
            child: BaseTextCell(
              icon: SvgPicture.asset(iconAsset),
              title: title,
              titleMaxLines: maxLines,
              titleStyle: ThemeProvider.bodySmall.copyWith(
                color: context.appTheme?.appTheme.textMain,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          )
        : Container();
  }
}
