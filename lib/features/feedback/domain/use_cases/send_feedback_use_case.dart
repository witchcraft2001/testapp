// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/feedback/domain/use_cases/params/feedback_use_case_params.dart';
import 'package:terralinkapp/generated/l10n.dart';

abstract class SendFeedbackUseCase
    implements AsyncParamfullUseCase<NotificationSendingResult, FeedbackUseCaseParams> {}

@LazySingleton(
  as: SendFeedbackUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendFeedbackUseCaseImpl extends SendFeedbackUseCase {
  @override
  Future<NotificationSendingResult> call(FeedbackUseCaseParams params) async {
    final Email emailData = Email(
      body: params.message,
      subject: '${S.current.feedbackTitle} ${Constants.appTitle}',
      recipients: Constants.feedbackAddresses,
    );

    try {
      await FlutterEmailSender.send(emailData);

      return NotificationSendingResult.success;
    } catch (_) {
      return NotificationSendingResult.error;
    }
  }
}
