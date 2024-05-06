// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/extensions/list_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/tl_divider.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/core/ui/widgets/tl_textfield.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/features/api_settings/domain/entities/api_settings_preset.dart';
import 'package:terralinkapp/features/api_settings/presentation/cubits/api_settings_cubit.dart';
import 'package:terralinkapp/features/api_settings/presentation/cubits/api_settings_edit_data.dart';
import 'package:terralinkapp/features/api_settings/presentation/cubits/api_settings_state.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/clear_data_admin_panel_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/clear_data_internal_systems_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/refresh_auth_settings_use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/get_likes_stat_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_all_api_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_api_settings_presets_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/set_all_api_settings_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'widgets/content.dart';
part 'dialogs/presets_dialog.dart';

class ApiSettingsScreen extends StatelessWidget {
  final bool isLogged;

  final TextEditingController _adminPanelApiBaseUrlController = TextEditingController();
  final TextEditingController _tasksSummaryApiBaseUrlController = TextEditingController();
  final TextEditingController _tasksSbsApiBaseUrlController = TextEditingController();
  final TextEditingController _wsUrlController = TextEditingController();
  final TextEditingController _msalTenantIdController = TextEditingController();
  final TextEditingController _msalClientIdController = TextEditingController();
  final TextEditingController _msalScopeController = TextEditingController();

  ApiSettingsScreen({
    super.key,
    this.isLogged = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ApiSettingsCubit>(
      create: (_) => ApiSettingsCubit(
        getIt<SetAllApiSettingsUseCase>(),
        getIt<GetAllApiSettingsUseCase>(),
        getIt<RefreshAuthSettingsUseCase>(),
        getIt<GetApiSettingsPresetsUseCase>(),
        getIt<ChatsRepository>(),
        getIt<GetLikesStatUseCase>(),
        isLogged ? getIt<ClearDataAdminPanelUseCase>() : null,
        isLogged ? getIt<ClearDataInternalSystemsUseCase>() : null,
      )..init(),
      child: BlocConsumer<ApiSettingsCubit, ApiSettingsState>(
        listener: (context, state) {
          state.whenOrNull(
            edit: (data) {
              if (_wsUrlController.text != data.wsUrl) {
                _wsUrlController.text = data.wsUrl;
              }
              if (_adminPanelApiBaseUrlController.text != data.adminPanelApiBaseUrl) {
                _adminPanelApiBaseUrlController.text = data.adminPanelApiBaseUrl;
              }
              if (_tasksSummaryApiBaseUrlController.text != data.tasksSummaryApiBaseUrl) {
                _tasksSummaryApiBaseUrlController.text = data.tasksSummaryApiBaseUrl;
              }
              if (_tasksSbsApiBaseUrlController.text != data.tasksSbsApiBaseUrl) {
                _tasksSbsApiBaseUrlController.text = data.tasksSbsApiBaseUrl;
              }
              if (_msalTenantIdController.text != data.msalTenantId) {
                _msalTenantIdController.text = data.msalTenantId;
              }
              if (_msalClientIdController.text != data.msalClientId) {
                _msalClientIdController.text = data.msalClientId;
              }
              if (_msalScopeController.text != data.msalScope) {
                _msalScopeController.text = data.msalScope;
              }
            },
            ready: () => appNavigationService.pop(context),
          );
        },
        builder: (context, state) => Scaffold(
          appBar: TlAppBar(
            title: S.current.settings,
            actions: _getActions(context, state),
          ),
          body: SafeArea(
            child: state.maybeWhen(
              edit: (data) => _Content(
                state: data,
                isLogged: isLogged,
                adminPanelApiBaseUrlController: _adminPanelApiBaseUrlController,
                tasksSummaryApiBaseUrlController: _tasksSummaryApiBaseUrlController,
                tasksSbsApiBaseUrlController: _tasksSbsApiBaseUrlController,
                wsUrlController: _wsUrlController,
                msalTenantIdController: _msalTenantIdController,
                msalClientIdController: _msalClientIdController,
                msalScopeController: _msalScopeController,
              ),
              orElse: () => const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _getActions(BuildContext context, ApiSettingsState state) {
    return IconButton(
      onPressed: () async {
        List<ApiSettingsPreset> presets = state.whenOrNull(edit: (data) => data.presets) ?? [];

        final result = await _showPresetsDialog(context, presets);

        if (result != null && context.mounted) {
          context.bloc<ApiSettingsCubit>().selectPreset(result);
        }
      },
      icon: SvgPicture.asset(TlAssets.iconProfileSettings),
    ).toList();
  }
}
