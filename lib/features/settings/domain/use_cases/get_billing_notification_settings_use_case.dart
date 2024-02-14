// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

abstract class GetBillingNotificationSettingsUseCase implements AsyncParamlessUseCase<bool?> {}

@LazySingleton(
  as: GetBillingNotificationSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetBillingNotificationSettingsUseCaseImpl extends GetBillingNotificationSettingsUseCase {
  final SettingsDataSource _settingsRepository;

  GetBillingNotificationSettingsUseCaseImpl(this._settingsRepository);

  @override
  Future<bool?> call([UseCaseParams params = const NoParams()]) async {
    return await _settingsRepository.getBool(
      SettingsRepositoryKeys.billingNotification,
    );
  }
}
