// Package imports:
import 'package:injectable/injectable.dart';

abstract class Constants {
  static const appTitle = 'TerraLife';
  static const deeplinkScheme = 'terralife://applink';
  static const feedbackAddresses = ['SamoylovM@terralink-global.com'];

  String getTasksSBSApiBaseUrl(); // SBS | Списывание часов
  String getTasksRfPApiBaseUrl(); // Requests for payment | ЗнО
  String getNewsApiBaseUrl();
  String getWsUrl();
  String getGlobalWebPage();
  String getRuWebPage();
  String getMsalTenantId();
  String getMsalClientId();
  String getMsalScope();
  String getMsalRedirectUri();
}

@LazySingleton(as: Constants, env: [Environment.dev])
class DevConstantsImpl extends Constants {
  @override
  String getTasksSBSApiBaseUrl() => 'http://tl-int-dev3:1082';

  @override
  String getTasksRfPApiBaseUrl() => 'http://mobileinternalsystem.terralink.ru:1080';

  @override
  String getNewsApiBaseUrl() => 'http://212.41.9.88:90';

  @override
  String getWsUrl() => 'ws://212.41.9.88:83';

  @override
  String getGlobalWebPage() => 'terralink-global.com';

  @override
  String getRuWebPage() => 'terralink.ru';

  @override
  String getMsalClientId() => '43c5aac5-7c21-4a28-be42-0cc507dd53d3';

  @override
  String getMsalRedirectUri() => 'msauth://com.terralink.app/Xo8WBi6jzSxKDVR4drqm84yr9iU%3D';

  @override
  String getMsalScope() => 'api://43c5aac5-7c21-4a28-be42-0cc507dd53d3/read offline_access';

  @override
  String getMsalTenantId() => 'eda0a622-f8fd-4e91-91f0-cfad5c1289bc';
}

@LazySingleton(as: Constants, env: [Environment.prod])
class ProdConstantsImpl extends Constants {
  @override
  String getTasksSBSApiBaseUrl() => 'http://tl-int-dev3:1082';

  @override
  String getTasksRfPApiBaseUrl() => 'http://mobileinternalsystem.terralink.ru:1080';

  @override
  String getNewsApiBaseUrl() => 'https://internalapp.terralink-global.com';

  @override
  String getWsUrl() => 'ws://internalapp.terralink-global.com:9020';

  @override
  String getGlobalWebPage() => 'terralink-global.com';

  @override
  String getRuWebPage() => 'terralink.ru';

  @override
  String getMsalClientId() => '43c5aac5-7c21-4a28-be42-0cc507dd53d3';

  @override
  String getMsalRedirectUri() => 'msauth://com.terralink.app/Xo8WBi6jzSxKDVR4drqm84yr9iU%3D';

  @override
  String getMsalScope() => 'api://43c5aac5-7c21-4a28-be42-0cc507dd53d3/read offline_access';

  @override
  String getMsalTenantId() => 'eda0a622-f8fd-4e91-91f0-cfad5c1289bc';
}
