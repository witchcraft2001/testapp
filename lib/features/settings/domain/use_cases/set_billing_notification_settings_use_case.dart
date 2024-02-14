// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/notifications/services/local_notifications_service.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/bool_use_case_params.dart';

abstract class SetBillingNotificationSettingsUseCase
    implements AsyncParamfullUseCase<void, BillingNotificationStatusUseCaseParams> {}

@LazySingleton(
  as: SetBillingNotificationSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class SetBillingNotificationSettingsUseCaseImpl extends SetBillingNotificationSettingsUseCase {
  final SettingsDataSource _settingsRepository;
  final LocalNotificationsService _notificationsService;

  SetBillingNotificationSettingsUseCaseImpl(this._settingsRepository, this._notificationsService);

  @override
  Future<void> call(BillingNotificationStatusUseCaseParams params) async {
    params.value
        ? await _notificationsService.enableBilling()
        : await _notificationsService.cancelBilling();

    await _settingsRepository.setBool(
      SettingsRepositoryKeys.billingNotification,
      params.value,
    );
  }
}
