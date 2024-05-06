// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/api_settings/data/repositories/api_settings_presets_repository.dart';
import 'package:terralinkapp/features/api_settings/domain/entities/api_settings_preset.dart';

@injectable
class GetApiSettingsPresetsUseCase implements AsyncParamlessUseCase<List<ApiSettingsPreset>> {
  final ApiSettingsPresetsRepository _repository;

  GetApiSettingsPresetsUseCase(this._repository);

  @override
  Future<List<ApiSettingsPreset>> call([UseCaseParams params = const NoParams()]) async =>
      await _repository.get();
}
