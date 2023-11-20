// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/api_settings_preset.dart';
import 'package:terralinkapp/data/repositories/local/api_settings_presets/api_settings_presets_repository.dart';

@injectable
class GetApiSettingsPresetsUseCase {
  final ApiSettingsPresetsRepository _repository;

  GetApiSettingsPresetsUseCase(this._repository);

  Future<List<ApiSettingsPreset>> run() async => await _repository.get();
}
