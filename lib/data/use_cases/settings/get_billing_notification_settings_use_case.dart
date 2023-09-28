// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart';

abstract class GetBillingNotificationSettingsUseCase {
  Future<bool?> run();
}

@LazySingleton(as: GetBillingNotificationSettingsUseCase, env: [Environment.dev, Environment.prod])
class GetBillingNotificationSettingsUseCaseImpl extends GetBillingNotificationSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  GetBillingNotificationSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<bool?> run() async {
    return await _settingsRepository.getBool(
      SettingsRepositoryKeys.billingNotification,
    );
  }
}
