// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:custom_qr_generator_2/custom_qr_generator.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/domain/business_card.dart';
import 'package:terralinkapp/domain/business_card_locale.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class BusinessCardQrCode extends StatelessWidget {
  final BusinessCard card;
  final double size;
  final Constants _constants = getIt<Constants>();

  BusinessCardQrCode({super.key, required this.card, required this.size});

  @override
  Widget build(BuildContext context) {
    final newContact = Contact()
      ..name.first = card.firstName
      ..name.last = card.lastName
      ..phones = [Phone(card.phone)]
      ..emails = [Email(card.email)];

    if (card.company.isNotEmpty || card.position.isNotEmpty) {
      newContact.organizations = [
        Organization(
          company: card.company,
          jobDescription: card.position,
        ),
      ];
    }

    newContact.websites = [
      Website(card.locale == BusinessCardLocale.global
          ? _constants.getGlobalWebPage()
          : _constants.getRuWebPage()),
    ];

    final vCard = newContact.toVCard();

    return CustomPaint(
      painter: QrPainter(
        data: vCard,
        options: QrOptions(
          colors: _getColorTheme(context),
        ),
      ),
      size: Size(size, size),
    );
  }

  QrColors _getColorTheme(BuildContext context) {
    return QrColors(
      dark: QrColor.solid(context.appTheme?.appTheme.color19 ?? AppColors.color19),
      background: QrColor.solid(context.appTheme?.appTheme.color1 ?? AppColors.color1),
    );
  }
}
