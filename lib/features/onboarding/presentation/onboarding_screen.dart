// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_network_image.dart';
import 'package:terralinkapp/core/ui/widgets/text_cell.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_special_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_stages_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_usefull_section.dart';
import 'package:terralinkapp/features/onboarding/presentation/cubits/onboarding_cubit.dart';
import 'package:terralinkapp/features/onboarding/presentation/cubits/onboarding_cubit_state.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'widgets/onboarding_stage_section.dart';
part 'widgets/onboarding_special_section.dart';
part 'widgets/onboarding_newbie_special_section.dart';
part 'widgets/onboarding_usefull_materials.dart';
part 'widgets/onboarding_usefull_material.dart';
part 'widgets/onboarding_screen_background.dart';
part 'widgets/onboarding_screen_special_sections_block.dart';
part 'widgets/onboarding_screen_usefull_materials_block.dart';
part 'widgets/onboarding_screen_stages_block.dart';
part 'widgets/onboarding_screen_stages_block_title.dart';
part 'widgets/onboarding_screen_title_block.dart';
part 'widgets/content.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingCubit>(
      create: (_) => getIt<OnboardingCubit>()..init(),
      child: BlocBuilder<OnboardingCubit, OnboardingCubitState>(
        builder: (_, state) => state.when(
          loading: () => const TlProgressIndicator(),
          ready: (data) => _Content(data: data),
        ),
      ),
    );
  }
}
