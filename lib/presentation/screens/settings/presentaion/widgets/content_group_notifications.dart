part of '../settings_screen.dart';

class _ContentGroupNotifications extends StatelessWidget {
  final bool isBillingNotificationEnabled;

  const _ContentGroupNotifications({
    required this.isBillingNotificationEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return _ContentGroup(
      title: S.current.settingsNotification,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContentItem(
            title: S.current.settingsNotificationBilling,
            trailingProps: _ContentItemTrailingProps(
              value: isBillingNotificationEnabled,
              onChange: context.bloc<SettingsCubit>().billing,
            ),
          ),
          TlDivider(
            padding: TlSpaces.pv4,
            height: 1.0,
            color: context.appTheme?.appTheme.bordersAndIconsStrokeShape,
          ),
          _ContentItem(
            title: S.current.settingsNotificationManage,
            onTap: () => AppSettings.openAppSettings(type: AppSettingsType.notification),
          ),
        ],
      ),
    );
  }
}
