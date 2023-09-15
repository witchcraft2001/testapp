// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/settings_repository.dart';

abstract class GetBillingNotificationSettingsUseCase {
  Future<bool?> run();
}

@LazySingleton(as: GetBillingNotificationSettingsUseCase, env: [Environment.dev, Environment.prod])
class GetBillingNotificationSettingsUseCaseImpl extends GetBillingNotificationSettingsUseCase {
  final SettingsRepository _settingsRepository;

  GetBillingNotificationSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<bool?> run() async {
    return await _settingsRepository.getBool(
      SettingsRepositoryKeys.billingNotification,
    );
  }
}
