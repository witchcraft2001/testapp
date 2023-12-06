// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/generated/l10n.dart';

abstract class SendFeedbackUseCase {
  Future<EmailSendingResult> run(String message);
}

@LazySingleton(
  as: SendFeedbackUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendFeedbackUseCaseImpl extends SendFeedbackUseCase {
  @override
  Future<EmailSendingResult> run(String message) async {
    final Email emailData = Email(
      body: message,
      subject: '${S.current.feedbackTitle} ${Constants.appTitle}',
      recipients: Constants.feedbackAddresses,
    );

    try {
      await FlutterEmailSender.send(emailData);

      return EmailSendingResult.success;
    } catch (_) {
      return EmailSendingResult.error;
    }
  }
}
