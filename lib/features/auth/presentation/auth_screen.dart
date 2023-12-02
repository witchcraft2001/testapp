// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/error_message.dart';
import 'package:terralinkapp/core/ui/widgets/loaders/tl_splash.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/auth/domain/auth_state.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import '../domain/auth_cubit.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..onInit(),
      child: Scaffold(
        appBar: const TlAppBar(
          height: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SafeArea(
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: handleListener,
            builder: (_, state) => switch (state) {
              NotLoggedInState() => const _ContentNotLoggedIn(),
              LoginFailed(message: var message) => _ContentLoginFailed(message: message),
              _ => const TlSplash(),
            },
          ),
        ),
      ),
    );
  }

  void handleListener(BuildContext context, AuthState state) {
    if (state is LoggedInState) {
      final userRegion = state.userRegion;

      if (userRegion == null) {
        return appNavigationService.goNamed(context, AppRoutes.region.name);
      }

      appNavigationService.goNamed(context, AppRoutes.news.name);
    }
  }
}

class _ContentNotLoggedIn extends StatelessWidget {
  const _ContentNotLoggedIn();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.ph24t4b16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: TlSpaces.pt48,
            child: GestureDetector(
              onDoubleTap: () =>
                  appNavigationService.pushNamed(context, AppRoutes.apiSettings.name),
              child: const TlSvg(
                assetName: TlAssets.imageAppLogo,
                size: TlSizes.appLogoSize,
              ),
            ),
          ),
          TlButton(
            title: S.current.btnLogin,
            onPressed: context.bloc<AuthCubit>().onLogin,
          ),
        ],
      ),
    );
  }
}

class _ContentLoginFailed extends StatelessWidget {
  final String message;

  const _ContentLoginFailed({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ErrorMessage(
      message: message,
      button: TlButton(
        title: S.current.btnRetry,
        type: AppBtnType.secondary,
        onPressed: context.bloc<AuthCubit>().onInit,
      ),
    );
  }
}
