// Flutter imports:
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/constants.dart';
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/data/models/app/app_tag_content/app_tag_content.dart';
import 'package:terralinkapp/domain/entities/api_story.dart';
import 'package:terralinkapp/domain/entities/api_story_block.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/screens/stories/domain/cubits/stories_cubit.dart';
import 'package:terralinkapp/presentation/screens/stories/domain/states/stories_cubit_state.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/utils/common.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_svg_icon_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/decorations/tl_bulleted_list.dart';
import 'package:terralinkapp/presentation/widgets/images/tl_network_image.dart';
import 'package:terralinkapp/presentation/widgets/ruler.dart';
import 'package:terralinkapp/presentation/widgets/tl_progress_indicator.dart';

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
