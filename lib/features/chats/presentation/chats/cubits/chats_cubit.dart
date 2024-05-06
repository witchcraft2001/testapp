// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:terralinkapp/core/ui/states/common_state.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_feed.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chats/get_chat_feed_observable_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chats/get_chat_feed_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chats/request_chats_use_case.dart';

@injectable
class ChatsCubit extends Cubit<CommonState<List<ChatFeed>>> {
  final RequestChatsUseCase _requestChatsUseCase;
  final GetChatFeedObservableUseCase _getChatFeedObservableUseCase;
  final GetChatFeedUseCase _getChatFeedUseCase;

  late StreamSubscription<List<ChatFeed>> _streamSubscription;

  ChatsCubit(
    this._requestChatsUseCase,
    this._getChatFeedObservableUseCase,
    this._getChatFeedUseCase,
  ) : super(const CommonState.init()) {
    _streamSubscription = _getChatFeedObservableUseCase()
        .asBroadcastStream()
        .distinct()
        .debounceTime(const Duration(milliseconds: 500))
        .listen((chats) => emit(CommonState.ready(chats)));
  }

  Future init() async {
    emit(const CommonState.init());

    await _requestChatsUseCase();

    final chats = await _getChatFeedUseCase();

    emit(CommonState.ready(chats));
  }

  @override
  Future<void> close() async {
    super.close();
    _streamSubscription.cancel();
  }
}
