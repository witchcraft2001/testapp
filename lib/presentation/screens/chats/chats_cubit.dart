// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_observable_use_case.dart';
import 'package:terralinkapp/data/use_cases/chats/get_chat_feed_use_case.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/chats/chats_state.dart';
import '../../../domain/chat_feed.dart';

@injectable
class ChatsCubit extends Cubit<ChatsState> {
  final GetChatFeedObservableUseCase _getChatFeedObservableUseCase;
  final GetChatFeedUseCase _getChatFeedUseCase;
  final LogService _logService;
  late StreamSubscription<List<ChatFeed>> _streamSubscription;

  ChatsCubit(
    this._getChatFeedObservableUseCase,
    this._getChatFeedUseCase,
    this._logService,
  ) : super(const ChatsInit()) {
    _streamSubscription = _getChatFeedObservableUseCase
        .run()
        .distinct()
        .debounceTime(const Duration(milliseconds: 500))
        .listen((event) => emit(ChatsShow(event)));
  }

  Future onInit() async {
    emit(const ChatsLoading());
    try {
      var result = await _getChatFeedUseCase.run();
      if (state is ChatsLoading || state is ChatsInit) {
        emit(ChatsShow(result));
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(ChatsLoadingError(S.current.loadingError));
    }
  }

  @override
  Future<void> close() async {
    super.close();
    _streamSubscription.cancel();
  }
}
