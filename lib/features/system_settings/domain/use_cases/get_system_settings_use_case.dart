// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/system_settings/data/mappers/system_settings_dao_mapper.dart';
import 'package:terralinkapp/features/system_settings/data/repositories/system_settings_repository.dart';
import 'package:terralinkapp/features/system_settings/domain/entities/system_settings.dart';

abstract class GetSystemSettingsUseCase implements AsyncParamlessUseCase<SystemSettings> {}

@Injectable(
  as: GetSystemSettingsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetSystemSettingsUseCaseImpl extends GetSystemSettingsUseCase {
  final SystemSettingsRepository _settingsRepository;

  GetSystemSettingsUseCaseImpl(
    this._settingsRepository,
  );

  @override
  Future<SystemSettings> call([UseCaseParams params = const NoParams()]) async {
    final settings = await _settingsRepository.get();

    return settings.toDomain();
  }
}
