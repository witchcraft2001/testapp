// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html_v3/flutter_html.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/theme/data/app_fonts.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/states/common_state.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/core/ui/widgets/html/tl_html.dart';
import 'package:terralinkapp/core/ui/widgets/images/tl_avatar.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_tag.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_feed.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chats/get_chat_feed_observable_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chats/get_chat_feed_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chats/request_chats_use_case.dart';
import 'package:terralinkapp/features/chats/presentation/chats/cubits/chats_cubit.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'shimmers/content_shimmer.dart';
part 'shimmers/chat_tile_shimmer.dart';
part 'widgets/content.dart';
part 'widgets/chat_tile.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChatsCubit(
        getIt<RequestChatsUseCase>(),
        getIt<GetChatFeedObservableUseCase>(),
        getIt<GetChatFeedUseCase>(),
      )..init(),
      child: Scaffold(
        body: BlocBuilder<ChatsCubit, CommonState<List<ChatFeed>>>(
          builder: (context, state) => state.when(
            init: () => const _ContentShimmer(),
            ready: (data) => _Content(data: data),
            error: (message, type) => TlErrorData(
              message: message,
              type: type,
              onPressed: context.read<ChatsCubit>().init,
            ),
          ),
        ),
      ),
    );
  }
}
