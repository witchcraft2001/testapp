part of '../api_settings_screen.dart';

class _Content extends StatelessWidget {
  final ApiSettingsEditData state;
  final bool isLogged;
  final TextEditingController _adminPanelApiBaseUrlController;
  final TextEditingController _tasksSummaryApiBaseUrlController;
  final TextEditingController _tasksSbsApiBaseUrlController;
  final TextEditingController _wsUrlController;
  final TextEditingController _msalTenantIdController;
  final TextEditingController _msalClientIdController;
  final TextEditingController _msalScopeController;

  const _Content({
    required this.state,
    required this.isLogged,
    required TextEditingController adminPanelApiBaseUrlController,
    required TextEditingController tasksSummaryApiBaseUrlController,
    required TextEditingController tasksSbsApiBaseUrlController,
    required TextEditingController wsUrlController,
    required TextEditingController msalTenantIdController,
    required TextEditingController msalClientIdController,
    required TextEditingController msalScopeController,
  })  : _adminPanelApiBaseUrlController = adminPanelApiBaseUrlController,
        _tasksSummaryApiBaseUrlController = tasksSummaryApiBaseUrlController,
        _tasksSbsApiBaseUrlController = tasksSbsApiBaseUrlController,
        _wsUrlController = wsUrlController,
        _msalTenantIdController = msalTenantIdController,
        _msalClientIdController = msalClientIdController,
        _msalScopeController = msalScopeController;

  @override
  Widget build(BuildContext context) {
    final bloc = context.bloc<ApiSettingsCubit>();

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: TlSpaces.p24,
              child: Column(
                children: [
                  TlTextField(
                    label: S.current.presetsAdminPanelApiBaseUrl,
                    text: state.adminPanelApiBaseUrl,
                    controller: _adminPanelApiBaseUrlController,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.changeAdminPanelApiBaseUrl,
                  ),
                  TlTextField(
                    label: S.current.presetsTasksSummaryApiBaseUrl,
                    text: state.tasksSummaryApiBaseUrl,
                    controller: _tasksSummaryApiBaseUrlController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.changeTasksSummaryApiBaseUrl,
                  ),
                  TlTextField(
                    label: S.current.presetsTasksSbsApiBaseUrl,
                    text: state.tasksSbsApiBaseUrl,
                    controller: _tasksSbsApiBaseUrlController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.changeTasksSbsApiBaseUrl,
                  ),
                  TlTextField(
                    label: S.current.presetsWsBaseUrl,
                    text: state.wsUrl,
                    controller: _wsUrlController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.changeWsUrl,
                  ),
                  TlTextField(
                    label: S.current.presetsMsalTenantId,
                    text: state.msalTenantId,
                    controller: _msalTenantIdController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.validationRequired,
                    maxLines: 1,
                    onChanged: bloc.changeMsalTenantId,
                  ),
                  TlTextField(
                    label: S.current.presetsMsalClientId,
                    text: state.msalClientId,
                    controller: _msalClientIdController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.validationRequired,
                    maxLines: 1,
                    onChanged: bloc.changeMsalClientId,
                  ),
                  TlTextField(
                    label: S.current.presetsMsalScope,
                    text: state.msalScope,
                    controller: _msalScopeController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.validationRequired,
                    maxLines: 1,
                    onChanged: bloc.changeMsalScope,
                  ),
                ],
              ),
            ),
          ),
        ),
        TlButton(
          title: S.current.btnSave,
          padding: TlSpaces.ph24t4b16,
          onPressed: isLogged ? bloc.saveWhenLogged : bloc.save,
        ),
      ],
    );
  }
}
