part of '../settings_screen.dart';

class _ContentData extends StatelessWidget {
  final SettingsReadyData data;

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
                _ContentGroupRegion(userRegion: data.userRegion),
                // ToDo задел для изменения языка приложения
                // _ContentGroup(
                //   child: _ContentItem(
                //     title: S.current.settingsLocale,
                //     trailing: Text(
                //       'RU',
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
              ],
            ),
          ),
        ),
        const _ButtonLogout(),
      ],
    );
  }
}
