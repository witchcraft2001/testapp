// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/common/extensions/list_extensions.dart';
import 'package:terralinkapp/data/models/app/api_settings_preset.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/screens/api_settings/domain/cubits/api_settings_cubit.dart';
import 'package:terralinkapp/presentation/screens/api_settings/domain/states/api_settings_screen_state.dart';
import 'package:terralinkapp/presentation/screens/api_settings/domain/states/api_settings_state.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/tl_divider.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';
import '../../../theme/app_style.dart';

part 'widgets/content.dart';

part 'widgets/presets_dialog.dart';

class ApiSettingsScreen extends StatelessWidget {
  final TextEditingController _newsApiBaseUrlController = TextEditingController();
  final TextEditingController _tasksSummaryApiBaseUrlController = TextEditingController();
  final TextEditingController _tasksSbsApiBaseUrlController = TextEditingController();
  final TextEditingController _wsUrlController = TextEditingController();
  final TextEditingController _msalTenantIdController = TextEditingController();
  final TextEditingController _msalClientIdController = TextEditingController();
  final TextEditingController _msalScopeController = TextEditingController();

  ApiSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ApiSettingsCubit>(
      create: (_) => getIt<ApiSettingsCubit>()..init(),
      child: BlocConsumer<ApiSettingsCubit, ApiSettingsScreenState>(
        builder: (context, state) => Scaffold(
          appBar: TlAppBar(
            title: S.current.titleSettings,
            actions: _getActions(context, state),
          ),
          body: SafeArea(
            child: state.maybeWhen(
              edit: (data) => _Content(
                state: data,
                newsApiBaseUrlController: _newsApiBaseUrlController,
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
        listener: (context, state) {
          if (state is Edit) {
            if (_wsUrlController.text != state.data.wsUrl) {
              _wsUrlController.text = state.data.wsUrl;
            }
            if (_newsApiBaseUrlController.text != state.data.newsApiBaseUrl) {
              _newsApiBaseUrlController.text = state.data.newsApiBaseUrl;
            }
            if (_tasksSummaryApiBaseUrlController.text != state.data.tasksSummaryApiBaseUrl) {
              _tasksSummaryApiBaseUrlController.text = state.data.tasksSummaryApiBaseUrl;
            }
            if (_tasksSbsApiBaseUrlController.text != state.data.tasksSbsApiBaseUrl) {
              _tasksSbsApiBaseUrlController.text = state.data.tasksSbsApiBaseUrl;
            }
            if (_msalTenantIdController.text != state.data.msalTenantId) {
              _msalTenantIdController.text = state.data.msalTenantId;
            }
            if (_msalClientIdController.text != state.data.msalClientId) {
              _msalClientIdController.text = state.data.msalClientId;
            }
            if (_msalScopeController.text != state.data.msalScope) {
              _msalScopeController.text = state.data.msalScope;
            }
          } else if (state is Success) {
            appNavigationService.pop(context);
          }
        },
      ),
    );
  }

  List<Widget> _getActions(BuildContext context, ApiSettingsScreenState state) {
    return IconButton(
      onPressed: () async {
        final result = await _showPresetsDialog(context, state is Edit ? state.data.presets : []);
        if (result != null && context.mounted) {
          context.bloc<ApiSettingsCubit>().onPresetSelected(result);
        }
      },
      icon: SvgPicture.asset(TlAssets.iconProfileSettings),
    ).toList();
  }
}
