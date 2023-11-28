// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:app_settings/app_settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/domain/models/app_user_region.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/region/domain/cubits/region_cubit.dart';
import 'package:terralinkapp/presentation/screens/settings/domain/cubits/settings_cubit.dart';
import 'package:terralinkapp/presentation/screens/settings/domain/states/settings_cubit_state.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/domain/cubits/theme_cubit.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_switch.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_divider.dart';
import 'package:terralinkapp/presentation/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';

part 'widgets/content.dart';
part 'widgets/content_bottom_buttons.dart';
part 'widgets/content_group.dart';
part 'widgets/content_group_notifications.dart';
part 'widgets/content_group_region.dart';
part 'widgets/content_group_themes.dart';
part 'widgets/content_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsCubit>(
      create: (_) => getIt<SettingsCubit>()..init(),
      child: Scaffold(
        appBar: TlAppBar(title: S.current.titleSettings),
        body: SafeArea(
          child: BlocBuilder<SettingsCubit, SettingsCubitState>(
            builder: (_, state) => state.when(
              loading: () => const TlProgressIndicator(),
              ready: (data) => _ContentData(data: data),
            ),
          ),
        ),
      ),
    );
  }
}
