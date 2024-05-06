class SystemSettings {
  final String? appVersion;
  final List<String> appVersionInfoEn;
  final List<String> appVersionInfoRu;

  SystemSettings({
    this.appVersion,
    this.appVersionInfoRu = const [],
    this.appVersionInfoEn = const [],
  });
}
