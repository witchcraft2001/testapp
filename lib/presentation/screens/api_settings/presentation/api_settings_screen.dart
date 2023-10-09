// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/screens/api_settings/domain/cubits/api_settings_cubit.dart';
import 'package:terralinkapp/presentation/screens/api_settings/domain/states/api_settings_screen_state.dart';
import 'package:terralinkapp/presentation/screens/api_settings/domain/states/api_settings_state.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';

part 'widgets/content.dart';

class ApiSettingsScreen extends StatelessWidget {
  const ApiSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ApiSettingsCubit>(
      create: (_) => getIt<ApiSettingsCubit>()..init(),
      child: Scaffold(
        appBar: TlAppBar(title: S.current.titleSettings),
        body: SafeArea(
          child: BlocConsumer<ApiSettingsCubit, ApiSettingsScreenState>(
            builder: (_, state) => state.maybeWhen(
              edit: (data) => _Content(state: data),
              orElse: () => const SizedBox(),
            ),
            listener: (context, state) {
              if (state is Success) {
                appNavigationService.pop(context);
              }
            },
          ),
        ),
      ),
    );
  }
}
