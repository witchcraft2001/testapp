// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_like.dart';
import 'package:terralinkapp/features/likes/common/presentation/widgets/user_tile.dart';
import 'package:terralinkapp/features/likes/my/presentation/cubits/likes_my_cubit.dart';
import 'package:terralinkapp/features/likes/my/presentation/cubits/likes_my_state.dart';
import 'package:terralinkapp/features/users/presentation/shimmers/user_tile_shimmer.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'shimmers/content_shimmer.dart';
part 'widgets/content_ready.dart';

class LikesMyScreen extends StatelessWidget {
  const LikesMyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LikesMyCubit>()..init(),
      child: Scaffold(
        appBar: TlAppBar(title: S.current.likesMy),
        body: BlocBuilder<LikesMyCubit, LikesMyState>(
          builder: (context, state) => state.when(
            loading: () => const _ContentShimmer(),
            ready: (likes) => _ContentReady(
              likes: likes,
              onRefresh: () => context.bloc<LikesMyCubit>().refresh(),
            ),
            error: (message, type) => TlErrorData(
              message: message,
              type: type,
              onPressed: context.bloc<LikesMyCubit>().refresh,
            ),
          ),
        ),
      ),
    );
  }
}
