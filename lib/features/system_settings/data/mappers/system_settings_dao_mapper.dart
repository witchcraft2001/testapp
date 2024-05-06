// Project imports:
import 'package:terralinkapp/features/system_settings/data/dao/system_settings_dao.dart';
import 'package:terralinkapp/features/system_settings/domain/entities/system_settings.dart';

extension SystemSettingsDaoMapper on SystemSettingsDao {
  SystemSettings toDomain() => SystemSettings(
        appVersion: appVersion,
        appVersionInfoEn: appVersionInfoEn?.split(' | ') ?? [],
        appVersionInfoRu: appVersionInfoRu?.split(' | ') ?? [],
      );
}
