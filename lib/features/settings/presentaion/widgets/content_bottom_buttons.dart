part of '../settings_screen.dart';

class _ButtonLogout extends StatelessWidget {
  const _ButtonLogout();

  @override
  Widget build(BuildContext context) {
    return TlButton(
      padding: TlSpaces.ph24t4b16,
      title: S.current.btnLogout,
      type: AppBtnType.secondary,
      onPressed: () async {
        await context.bloc<SettingsCubit>().logout();

        if (context.mounted) {
          appNavigationService.goNamed(context, AppRoutes.auth.name);
        }
      },
    );
  }
}
