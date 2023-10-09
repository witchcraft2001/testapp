part of '../api_settings_screen.dart';

class _Content extends StatelessWidget {
  final ApiSettingsState state;
  const _Content({required this.state});

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
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.onNewsApiBaseUrlChanged,
                  ),
                  TlTextField(
                    label: S.current.tasksApiBaseUrl,
                    text: state.tasksApiBaseUrl,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.onTasksApiBaseUrlChanged,
                  ),
                  TlTextField(
                    label: S.current.wsBaseUrl,
                    text: state.wsUrl,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    maxLines: 1,
                    onChanged: bloc.onWsUrlChanged,
                  ),
                  TlTextField(
                    label: S.current.msalTenantId,
                    text: state.msalTenantId,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.requiredToFill,
                    maxLines: 1,
                    onChanged: bloc.onMsalTenantIdChanged,
                  ),
                  TlTextField(
                    label: S.current.msalClientId,
                    text: state.msalClientId,
                    padding: TlSpaces.pt8,
                    textInputAction: TextInputAction.next,
                    hint: S.current.requiredToFill,
                    maxLines: 1,
                    onChanged: bloc.onMsalClientIdChanged,
                  ),
                  TlTextField(
                    label: S.current.msalScope,
                    text: state.msalScope,
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
