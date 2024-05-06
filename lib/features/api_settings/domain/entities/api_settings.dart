class ApiSettings {
  final String adminPanelApiBaseUrl;
  final String tasksSummaryApiBaseUrl;
  final String tasksSbsApiBaseUrl;
  final String wsUrl;
  final String msalTenantId;
  final String msalClientId;
  final String msalScope;

  ApiSettings({
    required this.adminPanelApiBaseUrl,
    required this.tasksSummaryApiBaseUrl,
    required this.tasksSbsApiBaseUrl,
    required this.wsUrl,
    required this.msalTenantId,
    required this.msalClientId,
    required this.msalScope,
  });
}
