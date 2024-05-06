// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/use_cases/params/send_email_use_case_params.dart';

// ToDo подумать над универсализацией функциональности, т.к. используется жанный мехонизм в нескольких местах
abstract class SendEmailUseCase
    implements AsyncParamfullUseCase<NotificationSendingResult, SendEmailUseCaseParams> {}

@LazySingleton(
  as: SendEmailUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendEmailUseCaseImpl extends SendEmailUseCase {
  @override
  Future<NotificationSendingResult> call(SendEmailUseCaseParams params) async {
    final Email emailData = Email(
      recipients: [params.recipient],
    );

    try {
      await FlutterEmailSender.send(emailData);

      return NotificationSendingResult.success;
    } catch (_) {
      return NotificationSendingResult.error;
    }
  }
}
