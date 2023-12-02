// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/error_message.dart';
import 'package:terralinkapp/generated/l10n.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorMessage(
        message: S.current.unknownRoute,
        button: TlButton(
          padding: TlSpaces.pv16,
          title: S.current.btnBackToMain,
          type: AppBtnType.primary,
          onPressed: () => appNavigationService.go(context, AppRoutes.news.path),
        ),
      ),
    );
  }
}
