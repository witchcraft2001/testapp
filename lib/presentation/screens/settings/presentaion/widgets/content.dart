part of '../settings_screen.dart';

class _ContentData extends StatelessWidget {
  final SettingsState data;

  const _ContentData({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: TlSpaces.ph24,
            child: Column(
              children: [
                // ToDo задел для изменения языка приложения
                // _ContentGroup(
                //   child: _ContentItem(
                //     title: S.current.settingsLocale,
                //     trailing: Text(
                //       'RU',
                //       style: appFontSemiMedium(16, context.appTheme?.appTheme.primary),
                //     ),
                //   ),
                // ),
                _ContentGroupThemes(
                  isDarkThemeEnabled: data.isDarkTheme,
                  isSystemThemeEnabled: data.isSystemTheme,
                ),
                _ContentGroupNotifications(
                  isBillingNotificationEnabled: data.isBillingNotification,
                ),
                // ToDo задел для отображения информации о приложении
                // _ContentGroup(
                //   child: _ContentItem(
                //     title: S.current.settingsAboutApp,
                //   ),
                // ),
              ],
            ),
          ),
        ),
        const _ButtonLogout(),
      ],
    );
  }
}
