part of '../welcome_screen.dart';

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: TlSpaces.p8,
          child: ClipRRect(
            borderRadius: TlDecoration.brSearchField,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const TlSvg(
                  assetName: TlAssets.imageWelcome,
                  fit: BoxFit.cover,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: TlSpaces.p24,
                        child: ClipRRect(
                          borderRadius: TlDecoration.brAvatarLetter,
                          child: TlSvgIconButton(
                            assetName: TlAssets.iconCross,
                            backgroundColor: context.appTheme?.colors.whiteOnColor,
                            onPressed: () async {
                              await context.read<WelcomeCubit>().setWelcomeStatusAsPassed();

                              if (context.mounted) {
                                appNavigationService.goNamed(context, AppRoutes.news.name);
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 20,
                      child: Padding(
                        padding: TlSpaces.p32,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            S.current.onboardingWelcome,
                            style: context.appTheme?.text.w700s49cWhite,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: TlSpaces.p32,
                      child: TlButton(
                        title: S.current.btnStart,
                        type: AppBtnType.action,
                        format: AppBtnFormat.rounded,
                        onPressed: () async {
                          await context.read<WelcomeCubit>().setWelcomeStatusAsPassed();

                          if (context.mounted) {
                            appNavigationService.goNamed(context, AppRoutes.onboarding.name);
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
