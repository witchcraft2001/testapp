// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/features/holidays/presentation/cubits/holidays_card_data.dart';

abstract class SendHolidaysCardByEmailUseCase {
  Future<EmailSendingResult> run(String attachmentPath, HolidaysCardData data);
}

@LazySingleton(
  as: SendHolidaysCardByEmailUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendHolidaysCardByEmailUseCaseImpl extends SendHolidaysCardByEmailUseCase {
  @override
  Future<EmailSendingResult> run(String attachmentPath, HolidaysCardData data) async {
    final Email emailData = Email(
      subject: data.subject,
      attachmentPaths: [attachmentPath],
      isHTML: true,
      body: data.address.isNotEmpty ? data.address : '',
    );

    try {
      await FlutterEmailSender.send(emailData);

      return EmailSendingResult.success;
    } catch (_) {
      return EmailSendingResult.error;
    }
  }
}
