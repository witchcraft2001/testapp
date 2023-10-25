part of '../api_settings_screen.dart';

class _Content extends StatelessWidget {
  final ApiSettingsState state;
  final TextEditingController _newsApiBaseUrlController;
  final TextEditingController _tasksEasApiBaseUrlController;
  final TextEditingController _tasksSbsApiBaseUrlController;
  final TextEditingController _wsUrlController;
  final TextEditingController _msalTenantIdController;
  final TextEditingController _msalClientIdController;
  final TextEditingController _msalScopeController;

  const _Content({
    required this.state,
    required TextEditingController newsApiBaseUrlController,
    required TextEditingController tasksEasApiBaseUrlController,
    required TextEditingController tasksSbsApiBaseUrlController,
    required TextEditingController wsUrlController,
    required TextEditingController msalTenantIdController,
    required TextEditingController msalClientIdController,
    required TextEditingController msalScopeController,
  })  : _newsApiBaseUrlController = newsApiBaseUrlController,
        _tasksEasApiBaseUrlController = tasksEasApiBaseUrlController,
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
                    label: S.current.newsApiBaseUrl,
                    text: state.newsApiBaseUrl,
                    controller: _newsApiBaseUrlController,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.onNewsApiBaseUrlChanged,
                  ),
                  TlTextField(
                    label: S.current.tasksSbsApiBaseUrl,
                    text: state.tasksSbsApiBaseUrl,
                    controller: _tasksSbsApiBaseUrlController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.onTasksSbsApiBaseUrlChanged,
                  ),
                  TlTextField(
                    label: S.current.tasksEasApiBaseUrl,
                    text: state.tasksEasApiBaseUrl,
                    controller: _tasksEasApiBaseUrlController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.onTasksEasApiBaseUrlChanged,
                  ),
                  TlTextField(
                    label: S.current.wsBaseUrl,
                    text: state.wsUrl,
                    controller: _wsUrlController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.onWsUrlChanged,
                  ),
                  TlTextField(
                    label: S.current.msalTenantId,
                    text: state.msalTenantId,
                    controller: _msalTenantIdController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.requiredToFill,
                    maxLines: 1,
                    onChanged: bloc.onMsalTenantIdChanged,
                  ),
                  TlTextField(
                    label: S.current.msalClientId,
                    text: state.msalClientId,
                    controller: _msalClientIdController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.requiredToFill,
                    maxLines: 1,
                    onChanged: bloc.onMsalClientIdChanged,
                  ),
                  TlTextField(
                    label: S.current.msalScope,
                    text: state.msalScope,
                    controller: _msalScopeController,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.requiredToFill,
                    maxLines: 1,
                    onChanged: bloc.onMsalScopeChanged,
                  ),
                ],
              ),
            ),
          ),
        ),
        TlButton(
          title: S.current.btnSave,
          padding: TlSpaces.ph24t4b16,
          onPressed: bloc.onSavePressed,
        ),
      ],
    );
  }
}
