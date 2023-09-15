// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/auth/auth_state.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/app_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import 'auth_cubit.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>()..onInit(),
      child: _getScreen(context),
    );
  }

  Widget _getScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme?.appTheme.backgroundDashboardsForms,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) async {
            if (state is LoggedInState) {
              appNavigationService.goNamed(context, AppRoutes.news.name);
            }
          },
          builder: (context, state) {
            return _getWidgetByState(context, state);
          },
        ),
      ),
    );
  }

  Widget _getWidgetByState(BuildContext context, AuthState state) {
    return switch (state) {
      NotLoggedInState() => _getLoggedOut(context),
      LoginFailed(message: var message) => ErrorMessage(
          message: message,
          button: AppButton(
            title: S.current.btnRetry,
            type: Type.secondary,
            onPressed: () {
              context.bloc<AuthCubit>().onLogin();
            },
          ),
        ),
      _ => const CenteredProgressIndicator(),
    };
  }

  Widget _getLoggedOut(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: TlSpaces.pt48,
            child: SvgPicture.asset(context.appTheme?.isDarkTheme == true
                ? TlAssets.imageTlLogoRuDark
                : TlAssets.imageTlLogoRu),
          ),
          AppButton(
            title: S.current.btnLogin,
            type: Type.primary,
            onPressed: () {
              context.bloc<AuthCubit>().onLogin();
            },
          ),
        ],
      ),
    );
  }
}
