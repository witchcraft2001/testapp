// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_content_data_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/features/onboarding_stories/presentation/cubits/onboarding_stories_cubit.dart';
import 'package:terralinkapp/features/onboarding_stories/presentation/cubits/onboarding_stories_ready_data.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content.dart';
import 'package:terralinkapp/features/onboarding_stories_content/presentation/widgets/onboarding_content_view.dart';

part 'widgets/content.dart';

class OnboardingStoriesScreen extends StatelessWidget {
  final List<OnboardingContent> stories;
  final Color? color;
  const OnboardingStoriesScreen({
    super.key,
    required this.stories,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MediaContentStoriesCubit>(
      create: (_) => MediaContentStoriesCubit()..init(stories, color),
      child: BlocBuilder<MediaContentStoriesCubit, CommonStateLite<MediaContentStoriesReadyData>>(
        builder: (_, state) => state.when(
          init: () => const TlProgressIndicator(),
          ready: (data) => _Content(data: data),
        ),
      ),
    );
  }
}
