// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/features/settings/data/data_sources/settings_data_source.dart';

@lazySingleton
class ApiSettingsProvider {
  final SettingsDataSource _settingsDataSource;
  final Constants _constants;

  late String _newsApiBaseUrl;
  late String _tasksSummaryApiBaseUrl;
  late String _tasksSbsApiBaseUrl;
  late String _wsUrl;
  late String _msalClientId;
  late String _msalScope;
  late String _msalTenantId;

  ApiSettingsProvider(this._settingsDataSource, this._constants);

  Future<void> init() async {
    _newsApiBaseUrl = await _settingsDataSource.getString(SettingsRepositoryKeys.newsApiBaseUrl) ??
        _constants.getNewsApiBaseUrl();

    _tasksSummaryApiBaseUrl =
        await _settingsDataSource.getString(SettingsRepositoryKeys.tasksSummaryApiBaseUrl) ??
            _constants.getTasksSummaryApiBaseUrl();
    _tasksSbsApiBaseUrl =
        await _settingsDataSource.getString(SettingsRepositoryKeys.tasksSbsApiBaseUrl) ??
            _constants.getTasksSbsApiBaseUrl();

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
  String getTasksSummaryApiBaseUrl() => _tasksSummaryApiBaseUrl.isNotEmpty
      ? _tasksSummaryApiBaseUrl
      : _constants.getTasksSummaryApiBaseUrl();

  String getTasksSbsApiBaseUrl() =>
      _tasksSbsApiBaseUrl.isNotEmpty ? _tasksSbsApiBaseUrl : _constants.getTasksSbsApiBaseUrl();

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

  Future<void> setTasksSummaryApiBaseUrl(String url) async {
    _tasksSummaryApiBaseUrl = url;
    await _settingsDataSource.setString(SettingsRepositoryKeys.tasksSummaryApiBaseUrl, url);
  }

  Future<void> setTasksSbsApiBaseUrl(String url) async {
    _tasksSbsApiBaseUrl = url;
    await _settingsDataSource.setString(SettingsRepositoryKeys.tasksSbsApiBaseUrl, url);
  }
}
