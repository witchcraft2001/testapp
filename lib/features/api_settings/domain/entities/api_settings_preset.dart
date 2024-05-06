// Package imports:
import 'package:equatable/equatable.dart';

class ApiSettingsPreset extends Equatable {
  final String name;
  final String adminPanelApiBaseUrl;
  final String tasksSummaryApiBaseUrl;
  final String tasksSbsApiBaseUrl;
  final String wsUrl;
  final String msalTenantId;
  final String msalClientId;
  final String msalScope;

  const ApiSettingsPreset({
    required this.name,
    required this.adminPanelApiBaseUrl,
    required this.tasksSummaryApiBaseUrl,
    required this.tasksSbsApiBaseUrl,
    required this.wsUrl,
    required this.msalTenantId,
    required this.msalClientId,
    required this.msalScope,
  });

  @override
  List<Object?> get props => [
        name,
        adminPanelApiBaseUrl,
        tasksSummaryApiBaseUrl,
        tasksSbsApiBaseUrl,
        wsUrl,
        msalTenantId,
        msalClientId,
        msalScope,
      ];
}
