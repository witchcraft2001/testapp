// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/settings_repository.dart';
import 'package:terralinkapp/data/services/local_notifications_service.dart';
import 'package:terralinkapp/injection.dart';

abstract class SetBillingNotificationSettingsUseCase {
  Future run(bool isEnabled);
}

@LazySingleton(as: SetBillingNotificationSettingsUseCase, env: [Environment.dev, Environment.prod])
class SetBillingNotificationSettingsUseCaseImpl extends SetBillingNotificationSettingsUseCase {
  final SettingsRepository _settingsRepository;

  SetBillingNotificationSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future run(bool isEnabled) async {
    isEnabled
        ? await getIt<LocalNotificationsService>().enableBilling()
        : await getIt<LocalNotificationsService>().cancelBilling();

    await _settingsRepository.setBool(
      SettingsRepositoryKeys.billingNotification,
      isEnabled,
    );
  }
}
