// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart';
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart';
import 'package:terralinkapp/domain/chat_feed.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/_unused/chats/chats_cubit.dart';
import 'package:terralinkapp/presentation/widgets/app_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import 'package:terralinkapp/presentation/widgets/search_field.dart';
import 'chat_item.dart';
import 'chats_state.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatsCubit(
        getIt<GetChatFeedObservableUseCase>(),
        getIt<GetChatFeedUseCase>(),
        getIt<LogService>(),
      ),
      child: _getChatsScreen(context),
    );
  }

  Widget _getChatsScreen(BuildContext context) {
    return BlocConsumer<ChatsCubit, ChatsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return _getChatsByState(context, state);
      },
    );
  }

  Widget _getChatsByState(BuildContext context, ChatsState state) {
    return switch (state) {
      ChatsInit() => _getInitState(context),
      ChatsLoading() => const CenteredProgressIndicator(),
      ChatsShow(list: var list) => _getListState(context, list),
      ChatsLoadingError(message: var message) => _getError(context, message)
    };
  }

  Widget _getInitState(BuildContext context) {
    context.bloc<ChatsCubit>().onInit();

    return const CenteredProgressIndicator();
  }

  Widget _getListState(BuildContext context, List<ChatFeed> list) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: SearchField(
          padding: TlSpaces.ph24,
          hint: S.current.searchMsgAndDocsHint,
          text: '',
          onChanged: (_) {},
        ),
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: TlSpaces.ph24v12,
                  child: ChatItem(
                    item: list[index],
                    onPressed: (item) => appNavigationService.goNamed(
                      context,
                      AppRoutes.chat.name,
                      pathParameters: {AppNavigationKeys.id: item.id},
                    ),
                  ),
                );
              },
              childCount: list.length,
            ),
          ),
        ],
      ),
    );
  }

  // Widget _getListState(BuildContext context, List<ChatFeed> list) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       _getSearchField(context),
  //       ListView.builder(
  //         padding: const EdgeInsets.only(left: 21.0, right: 21.0, top: 4.0, bottom: 4.0),
  //         scrollDirection: Axis.vertical,
  //         itemCount: list.length,
  //         shrinkWrap: true,
  //         itemBuilder: (BuildContext context, int index) {
  //           return Padding(
  //             padding: const EdgeInsets.only(bottom: 11.0),
  //             child: ChatItem(
  //               item: list[index],
  //               onPressed: (item) => Navigator.pushNamed(context, '/chats', arguments: item.id),
  //             ),
  //           );
  //         },
  //       )
  //     ],
  //   );
  // }

  Widget _getError(BuildContext context, String message) {
    return ErrorMessage(
      message: message,
      button: AppButton(
        title: S.of(context).btnRetry,
        type: Type.secondary,
        onPressed: context.bloc<ChatsCubit>().onInit,
      ),
    );
  }
}
