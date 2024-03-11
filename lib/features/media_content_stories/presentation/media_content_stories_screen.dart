// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_svg_icon_button.dart';
import 'package:terralinkapp/core/ui/widgets/tl_page_indicator.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_content.dart';
import 'package:terralinkapp/features/media_content/presentation/widgets/media_content_view.dart';
import 'package:terralinkapp/features/media_content_stories/domain/cubits/media_content_stories_cubit.dart';
import 'package:terralinkapp/features/media_content_stories/domain/cubits/media_content_stories_cubit_state.dart';

part 'widgets/content.dart';
part 'widgets/media_content_data_app_bar.dart';

class MediaContentStoriesScreen extends StatelessWidget {
  final List<MediaContent> stories;
  final Color? color;
  const MediaContentStoriesScreen({
    super.key,
    required this.stories,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MediaContentStoriesCubit>(
      create: (_) => MediaContentStoriesCubit()..init(stories, color),
      child: BlocBuilder<MediaContentStoriesCubit, MediaContentStoriesCubitState>(
        builder: (_, state) => state.when(
          loading: () => const TlProgressIndicator(),
          ready: (data) => _Content(data: data),
        ),
      ),
    );
  }
}
