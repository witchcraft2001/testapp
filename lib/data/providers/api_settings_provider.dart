// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/data/data_sources/local/shared_preferences/settings_data_source.dart';

@lazySingleton
class ApiSettingsProvider {
  final SettingsDataSource _settingsDataSource;
  final Constants _constants;

  late String _newsApiBaseUrl;
  late String _tasksSBSApiBaseUrl;
  late String _tasksEASApiBaseUrl;
  late String _wsUrl;
  late String _msalClientId;
  late String _msalScope;
  late String _msalTenantId;

  ApiSettingsProvider(this._settingsDataSource, this._constants);

  Future<void> init() async {
    _newsApiBaseUrl = await _settingsDataSource.getString(SettingsRepositoryKeys.newsApiBaseUrl) ??
        _constants.getNewsApiBaseUrl();

    _tasksSBSApiBaseUrl =
        await _settingsDataSource.getString(SettingsRepositoryKeys.tasksSBSApiBaseUrl) ??
            _constants.getTasksSBSApiBaseUrl();
    _tasksEASApiBaseUrl =
        await _settingsDataSource.getString(SettingsRepositoryKeys.tasksEASApiBaseUrl) ??
            _constants.getTasksEASApiBaseUrl();

    _wsUrl =
        await _settingsDataSource.getString(SettingsRepositoryKeys.wsUrl) ?? _constants.getWsUrl();

    _msalTenantId = await _settingsDataSource.getString(SettingsRepositoryKeys.msalTenantId) ??
        _constants.getMsalTenantId();
    _msalClientId = await _settingsDataSource.getString(SettingsRepositoryKeys.msalClientId) ??
        _constants.getMsalClientId();
    _msalScope = await _settingsDataSource.getString(SettingsRepositoryKeys.msalScope) ??
        _constants.getMsalScope();
  }

  // Getters
  String getTasksSBSApiBaseUrl() =>
      _tasksSBSApiBaseUrl.isNotEmpty ? _tasksSBSApiBaseUrl : _constants.getTasksSBSApiBaseUrl();

  String getTasksEASApiBaseUrl() =>
      _tasksEASApiBaseUrl.isNotEmpty ? _tasksEASApiBaseUrl : _constants.getTasksEASApiBaseUrl();

  String getNewsApiBaseUrl() =>
      _newsApiBaseUrl.isNotEmpty ? _newsApiBaseUrl : _constants.getNewsApiBaseUrl();

  String getMsalClientId() =>
      _msalClientId.isNotEmpty ? _msalClientId : _constants.getMsalClientId();

  String getMsalScope() => _msalScope.isNotEmpty ? _msalScope : _constants.getMsalScope();

  String getMsalTenantId() =>
      _msalTenantId.isNotEmpty ? _msalTenantId : _constants.getMsalTenantId();

  String getWsUrl() => _wsUrl.isNotEmpty ? _wsUrl : _constants.getWsUrl();

  // Setters
  Future<void> setNewsApiBaseUrl(String url) async {
    _newsApiBaseUrl = url;
    await _settingsDataSource.setString(SettingsRepositoryKeys.newsApiBaseUrl, url);
  }

  Future<void> setMsalClientId(String id) async {
    _msalClientId = id;
    await _settingsDataSource.setString(SettingsRepositoryKeys.msalClientId, id);
  }

  Future<void> setMsalScope(String scope) async {
    _msalScope = scope;
    await _settingsDataSource.setString(SettingsRepositoryKeys.msalScope, scope);
  }

  Future<void> setMsalTenantId(String id) async {
    _msalTenantId = id;
    await _settingsDataSource.setString(SettingsRepositoryKeys.msalTenantId, id);
  }

  Future<void> setWsUrl(String url) async {
    _wsUrl = url;
    await _settingsDataSource.setString(SettingsRepositoryKeys.wsUrl, url);
  }

  Future<void> setTasksSBSApiBaseUrl(String url) async {
    _tasksSBSApiBaseUrl = url;
    await _settingsDataSource.setString(SettingsRepositoryKeys.tasksSBSApiBaseUrl, url);
  }

  Future<void> setTasksEASApiBaseUrl(String url) async {
    _tasksEASApiBaseUrl = url;
    await _settingsDataSource.setString(SettingsRepositoryKeys.tasksEASApiBaseUrl, url);
  }
}
