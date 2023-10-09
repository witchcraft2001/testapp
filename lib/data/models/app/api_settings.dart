class ApiSettings {
  final String newsApiBaseUrl;
  final String tasksApiBaseUrl;
  final String wsUrl;
  final String msalTenantId;
  final String msalClientId;
  final String msalScope;

  ApiSettings({
    required this.newsApiBaseUrl,
    required this.tasksApiBaseUrl,
    required this.wsUrl,
    required this.msalTenantId,
    required this.msalClientId,
    required this.msalScope,
  });
}
