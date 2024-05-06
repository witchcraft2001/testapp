// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/common/tl_chars.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/core/utils/snacbar.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/use_cases/params/send_email_use_case_params.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/use_cases/send_email_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

Future<void> goToUrl(
  String url, {
  LaunchMode mode = LaunchMode.platformDefault,
}) async {
  final uri = Uri.parse(url);

  await launchUrl(uri, mode: mode);
}

Future<void> goToUrlOrEmail(BuildContext context, String? link) async {
  if (link != null) {
    if (link.startsWith('http')) {
      return await goToUrl(link);
    }

    // ToDo есть ограничения по навигаци из-за передачи данных в виджеты (например, данные самой стори) или динамических id (id чата с ботом, например, у каждого пользователя свой)
    if (link.startsWith(Constants.deeplinkScheme)) {
      final uri = Uri.parse(link);

      return appNavigationService.go(
        context,
        uri.path,
        extra: uri.queryParameters,
      );
    }

    if (link.contains(TlChars.at)) {
      return _handleOpenEmail(context, link);
    }
  }

  ScaffoldMessenger.of(context).showSnackBar(buildSnackBar(
    theme: context.appTheme,
    data: TlSnackBarData(message: S.current.exceptionLinkWrong),
  ));
}

Future<void> _handleOpenEmail(BuildContext context, String link) async {
  final result = await getIt<SendEmailUseCase>().call(SendEmailUseCaseParams(link));

  if (context.mounted && result == NotificationSendingResult.error) {
    showDialog<dynamic>(
      context: context,
      builder: (_) => TlDialogConfirm(
        message: S.current.feedbackSendingError,
        cancelTitle: S.current.btnClose,
      ),
    );
  }
}
