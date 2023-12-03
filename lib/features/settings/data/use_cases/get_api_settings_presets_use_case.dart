// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/api_settings/data/entities/api_settings_preset.dart';
import 'package:terralinkapp/features/api_settings/data/repositories/api_settings_presets_repository.dart';

@injectable
class GetApiSettingsPresetsUseCase {
  final ApiSettingsPresetsRepository _repository;

  GetApiSettingsPresetsUseCase(this._repository);

  Future<List<ApiSettingsPreset>> run() async => await _repository.get();
}
