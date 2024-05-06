// Project imports:
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';

class SettingsReadyData {
  final bool isDarkTheme;
  final bool isSystemTheme;
  final bool isBillingNotification;
  final AppUserRegion? userRegion;

  const SettingsReadyData({
    this.isDarkTheme = false,
    this.isSystemTheme = false,
    this.isBillingNotification = false,
    this.userRegion,
  });

  SettingsReadyData copyWith({
    bool? isDarkTheme,
    bool? isSystemTheme,
    bool? isBillingNotification,
    AppUserRegion? userRegion,
  }) =>
      SettingsReadyData(
        isDarkTheme: isDarkTheme ?? this.isDarkTheme,
        isSystemTheme: isSystemTheme ?? this.isSystemTheme,
        isBillingNotification: isBillingNotification ?? this.isBillingNotification,
        userRegion: userRegion ?? this.userRegion,
      );
}
