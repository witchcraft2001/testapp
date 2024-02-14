// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/params/greeting_cards_use_case_params.dart';

abstract class SendGreetingCardByEmailUseCase
    implements AsyncParamfullUseCase<NotificationSendingResult, GreetingCardsUseCaseParams> {}

@LazySingleton(
  as: SendGreetingCardByEmailUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendGreetingCardByEmailUseCaseImpl extends SendGreetingCardByEmailUseCase {
  @override
  Future<NotificationSendingResult> call(GreetingCardsUseCaseParams params) async {
    final Email emailData = Email(
      subject: params.data.subject,
      attachmentPaths: [params.attachmentPath],
      isHTML: true,
      body: params.data.address.isNotEmpty ? params.data.address : '',
    );

    try {
      await FlutterEmailSender.send(emailData);

      return NotificationSendingResult.success;
    } catch (_) {
      return NotificationSendingResult.error;
    }
  }
}
