// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/common/constants.dart';
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_svg_icon_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/decorations/tl_bulleted_list.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_network_image.dart';
import 'package:terralinkapp/core/ui/widgets/ruler.dart';
import 'package:terralinkapp/core/ui/widgets/tl_progress_indicator.dart';
import 'package:terralinkapp/core/utils/common.dart';
import 'package:terralinkapp/features/stories/data/entities/app_tag_content.dart';
import 'package:terralinkapp/features/stories/domain/cubits/stories_cubit.dart';
import 'package:terralinkapp/features/stories/domain/entities/api_story.dart';
import 'package:terralinkapp/features/stories/domain/entities/api_story_block.dart';
import 'package:terralinkapp/features/stories/domain/states/stories_cubit_state.dart';

part 'widgets/content.dart';
part 'widgets/content_story.dart';
part 'widgets/story_block.dart';
part 'widgets/block_text.dart';

class StoriesScreen extends StatelessWidget {
  final List<ApiStory> stories;
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
      child: BlocBuilder<StoriesCubit, StoriesCubitState>(
        builder: (_, state) => state.when(
          loading: () => const TlProgressIndicator(),
          ready: (data) => _ContentData(data: data),
        ),
      ),
    );
  }
}
