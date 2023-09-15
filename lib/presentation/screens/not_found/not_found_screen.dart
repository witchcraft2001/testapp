// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';

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
