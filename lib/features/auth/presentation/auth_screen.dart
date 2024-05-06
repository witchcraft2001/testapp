// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/core/ui/widgets/loaders/tl_splash.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/auth/presentation/cubits/auth_state.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'cubits/auth_cubit.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>()..init(),
      child: Scaffold(
        body: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, _) => context.bloc<AuthCubit>().redirect(context),
          builder: (_, state) => switch (state) {
            NotLoggedInState() => const SafeArea(child: _ContentNotLoggedIn()),
            LoginFailed(message: final message, type: final type) => SafeArea(
                child: _ContentLoginFailed(
                  message: message,
                  type: type,
                ),
              ),
            _ => const TlSplash(),
          },
        ),
      ),
    );
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
            onPressed: context.bloc<AuthCubit>().login,
          ),
        ],
      ),
    );
  }
}

class _ContentLoginFailed extends StatelessWidget {
  final String message;
  final TlExceptionType type;

  const _ContentLoginFailed({
    required this.message,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return TlErrorData(
      message: message,
      description:
          type == TlExceptionType.unauthorized ? S.current.exceptionUnauthorizedDesc : null,
      type: type,
      onPressed: context.bloc<AuthCubit>().init,
    );
  }
}
