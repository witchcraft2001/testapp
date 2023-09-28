// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart';
import 'package:terralinkapp/data/services/local_notifications_service.dart';

abstract class SetBillingNotificationSettingsUseCase {
  Future<void> run(bool isEnabled);
}

@LazySingleton(as: SetBillingNotificationSettingsUseCase, env: [Environment.dev, Environment.prod])
class SetBillingNotificationSettingsUseCaseImpl extends SetBillingNotificationSettingsUseCase {
  final SettingsDataSource _settingsRepository;
  final LocalNotificationsService _notificationsService;
  
  SetBillingNotificationSettingsUseCaseImpl(this._settingsRepository, this._notificationsService);

  @override
  Future<void> run(bool isEnabled) async {
    isEnabled
        ? await _notificationsService.enableBilling()
        : await _notificationsService.cancelBilling();

    await _settingsRepository.setBool(
      SettingsRepositoryKeys.billingNotification,
      isEnabled,
    );
  }
}
