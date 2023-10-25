// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/api_settings_presets/api_settings_presets_data_source.dart';
import 'package:terralinkapp/data/mappers/api_settings_preset_dao_mapper.dart';
import 'package:terralinkapp/data/models/app/api_settings_preset.dart';

@injectable
class ApiSettingsPresetsRepository {
  final ApiSettingsPresetsDataSource _dataSource;

  ApiSettingsPresetsRepository(this._dataSource);

  Future<List<ApiSettingsPreset>> get() async {
    final result = await _dataSource.get();
    
    return result.map((e) => e.toDomain()).toList(growable: false);
  }
}
