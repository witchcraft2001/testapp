// Project imports:
import 'package:terralinkapp/features/api_settings/data/dao/api_settings_preset_dao.dart';
import 'package:terralinkapp/features/api_settings/data/entities/api_settings_preset.dart';

extension ApiSettingsPresetDaoMapper on ApiSettingsPresetDao {
  ApiSettingsPreset toDomain() => ApiSettingsPreset(
        name: name,
        adminPanelApiBaseUrl: adminPanelApiBaseUrl,
        tasksSummaryApiBaseUrl: tasksSummaryApiBaseUrl,
        tasksSbsApiBaseUrl: tasksSbsApiBaseUrl,
        wsUrl: wsUrl,
        msalTenantId: msalTenantId,
        msalClientId: msalClientId,
        msalScope: msalScope,
      );
}
