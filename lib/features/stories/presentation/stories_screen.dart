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
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';
import 'package:terralinkapp/features/media_content/presentation/widgets/media_content_block.dart';
import 'package:terralinkapp/features/stories/presentation/cubits/stories_cubit.dart';
import 'package:terralinkapp/features/stories/presentation/cubits/stories_ready_data.dart';

part 'widgets/content.dart';
part 'widgets/content_story.dart';

class StoriesScreen extends StatelessWidget {
  final List<MediaContent> stories;
  final Color? color;

  const StoriesScreen({
    super.key,
    required this.stories,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StoriesCubit>(
      create: (_) => StoriesCubit()..init(stories, color),
      child: BlocBuilder<StoriesCubit, CommonStateLite<StoriesReadyData>>(
        builder: (_, state) => state.when(
          init: () => const TlProgressIndicator(),
          ready: (data) => _Content(data: data),
        ),
      ),
    );
  }
}
