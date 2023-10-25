// Project imports:
import 'package:terralinkapp/data/dao/api_settings_preset_dao.dart';
import 'package:terralinkapp/data/models/app/api_settings_preset.dart';

extension ApiSettingsPresetDaoMapper on ApiSettingsPresetDao {
  ApiSettingsPreset toDomain() => ApiSettingsPreset(
        name: name,
        newsApiBaseUrl: newsApiBaseUrl,
        tasksEasApiBaseUrl: tasksEasApiBaseUrl,
        tasksSbsApiBaseUrl: tasksSbsApiBaseUrl,
        wsUrl: wsUrl,
        msalTenantId: msalTenantId,
        msalClientId: msalClientId,
        msalScope: msalScope,
      );
}
