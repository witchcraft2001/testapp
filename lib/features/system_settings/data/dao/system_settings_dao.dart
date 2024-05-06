class SystemSettingsDao {
  final String? appVersion;
  final String? appVersionInfoEn;
  final String? appVersionInfoRu;

  const SystemSettingsDao({
    this.appVersion,
    this.appVersionInfoEn,
    this.appVersionInfoRu,
  });

  SystemSettingsDao.fromJson(Map<String, dynamic> json)
      : appVersion = json['app_version'],
        appVersionInfoEn = json['app_version_info_en'],
        appVersionInfoRu = json['app_version_info_ru'];
}
