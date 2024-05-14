// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/use_cases/params/string_id_use_case_params.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chats/domain/entities/button_form_item_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_feed.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message_vote.dart';
import 'package:terralinkapp/features/chats/domain/entities/message_ui.dart';
import 'package:terralinkapp/features/chats/domain/entities/query_examples/chat_query_example.dart';
import 'package:terralinkapp/features/chats/domain/entities/select_field_item_message.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/get_all_messages_by_chat_id_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/get_chat_info_by_id_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/get_chat_query_examples_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/remove_message_by_id_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/reset_new_messages_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/send_chat_message_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/send_form_chat_message_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/send_menu_item_chat_message_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chat/vote_chat_message_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chats/get_chat_feed_observable_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/chats/get_chat_feed_use_case.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/chat_message_use_case_params.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/chat_use_case_params.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/form_chat_message_use_case_params.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/menu_item_use_case_params.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/message_use_case_params.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/vote_chat_message_use_case_params.dart';
import 'package:terralinkapp/features/chats/presentation/chat/cubits/chat_state.dart';
import 'package:terralinkapp/features/chats/presentation/chat/mappers/message_ui_mapper.dart';
import 'package:terralinkapp/generated/l10n.dart';

@injectable
class ChatCubit extends Cubit<ChatState> {
  final GetChatFeedObservableUseCase _getChatFeedObservableUseCase;
  final GetChatFeedUseCase _getChatFeedUseCase;
  final GetChatInfoByIdUseCase _chatInfoByIdUseCase;
  final GetAllMessagesByChatIdUseCase _allMessagesByChatIdUseCase;
  final SendChatMessageUseCase _sendChatMessageUseCase;
  final SendMenuItemChatMessageUseCase _sendMenuItemChatMessageUseCase;
  final VoteChatMessageUseCase _voteChatMessageUseCase;
  final ResetNewMessagesUseCase _resetNewMessagesUseCase;
  final GetChatQueryExamplesUseCase _getChatQueryExamplesUseCase;
  final ChatsRepository _chatsRepository;
  final RemoveMessageByIdUseCase _removeMessageByIdUseCase;
  final UserService _userService;
  final SendFormChatMessageUseCase _sendFormChatMessageUseCase;
  final LogService _logService;

  late StreamSubscription<String> _streamSubscription;
  late StreamSubscription<List<ChatFeed>> _chatsSubscription;
  late String _chatId;
  late List<ChatFeed> _chats;

  ChatCubit(
    this._getChatFeedObservableUseCase,
    this._getChatFeedUseCase,
    this._chatInfoByIdUseCase,
    this._allMessagesByChatIdUseCase,
    this._chatsRepository,
    this._userService,
    this._sendChatMessageUseCase,
    this._sendMenuItemChatMessageUseCase,
    this._voteChatMessageUseCase,
    this._resetNewMessagesUseCase,
    this._getChatQueryExamplesUseCase,
    this._removeMessageByIdUseCase,
    this._sendFormChatMessageUseCase,
    this._logService,
  ) : super(InitState()) {
    _chatsSubscription = _getChatFeedObservableUseCase()
        .distinct()
        .debounceTime(const Duration(milliseconds: 500))
        .listen((chats) => _chats = chats);

    _streamSubscription = _chatsRepository.chatMessagesUpdatesStream
        .where((event) => event == _chatId)
        .debounceTime(const Duration(milliseconds: 300))
        .listen((event) async {
      await _updateMessages(
        isScrollDown: true,
        isAnswerPlaceholderVisible: false,
      );
    });
  }

  Future init(String id, [int? serviceId]) async {
    emit(InitState());

    try {
      _chats = await _getChatFeedUseCase();

      if (_chats.isNotEmpty) {
        _chatId = id;

        final newState = ShowChatState.getEmpty().copy(chatId: _chatId);
        emit(newState);

        try {
          final info = await _chatInfoByIdUseCase(StringIdUseCaseParams(_chatId));
          final queryExamples = await _getQueryExamples(serviceId);

          final updated = newState.copy(
            chatId: _chatId,
            isLoading: false,
            isOnline: info.isOnline,
            avatar: info.avatar,
            name: info.name,
            serviceId: serviceId,
            queryExamples: queryExamples,
          );
          emit(updated);

          await _updateMessages(isScrollDown: true);
        } catch (_) {
          rethrow;
        }
      } else {
        emit(LoadingErrorState(S.current.chatNoShow));
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(LoadingErrorState(S.current.exceptionRepoLoading));
    }
  }

  void changeText(String text) {
    if (state is ShowChatState) {
      final current = state as ShowChatState;
      emit(current.copy(text: text));
    }
  }

  Future send() async {
    if (state is ShowChatState) {
      try {
        if ((state as ShowChatState).text.isEmpty) return;

        emit((state as ShowChatState).copy(isSending: true));

        final current = state as ShowChatState;

        await _sendChatMessageUseCase(
          ChatMessageUseCaseParams(
            chatId: current.chatId,
            text: current.text,
          ),
        );
        await _updateMessages(
          isScrollDown: true,
          isAnswerPlaceholderVisible: true,
          text: '',
        );
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);

        emit(LoadingErrorState(S.current.exceptionRepoLoading));
      }
    }
  }

  /// По возможность объединить с [send]
  Future sendExample(String text) async {
    if (state is ShowChatState) {
      try {
        emit((state as ShowChatState).copy(isSending: true));

        final current = state as ShowChatState;

        await _sendChatMessageUseCase(
          ChatMessageUseCaseParams(
            chatId: current.chatId,
            text: text,
          ),
        );
        await _updateMessages(
          isScrollDown: true,
          isAnswerPlaceholderVisible: true,
          text: '',
        );
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);

        emit(LoadingErrorState(S.current.exceptionRepoLoading));
      }
    }
  }

  Future sendSelectedMenu(String menuId, String value) async {
    if (state is ShowChatState) {
      try {
        final current = state as ShowChatState;

        _sendMenuItemChatMessageUseCase(
          MenuItemUseCaseParams(
            chatId: current.chatId,
            menuId: menuId,
            value: value,
          ),
        );

        emit(current.copy(isSending: true));
        await _updateMessages(isScrollDown: false);
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);

        emit(LoadingErrorState(S.current.exceptionRepoLoading));
      }
    }
  }

  Future _updateMessages({
    required bool isScrollDown,
    bool? isAnswerPlaceholderVisible,
    String? text,
  }) async {
    final messages = await _allMessagesByChatIdUseCase(StringIdUseCaseParams(_chatId));
    final currentState = switch (state) {
      InitState() => ShowChatState.getEmpty().copy(chatId: _chatId),
      _ => state as ShowChatState
    };

    final messagesUi = messages.toUi(_userService.getUser()?.name ?? '');
    final formMessageUi = getFormActive(messagesUi);

    emit(currentState.copy(
      messages: messagesUi,
      isSending: false,
      isScrollDown: isScrollDown,
      isAnswerPlaceholderVisible: isAnswerPlaceholderVisible,
      text: text,
      isInputFieldVisible: formMessageUi == null,
      isSendFormVisible: formMessageUi != null,
      activeForm: formMessageUi,
    ));

    if (messages.any((element) => !element.isMine && element.isUnread)) {
      _resetNewMessagesUseCase(
        ChatUseCaseParams(chatId: _chatId),
      );
    }
  }

  Future pressFormButton(ButtonFormItemMessage button) async {
    if (state is ShowChatState) {
      try {
        if (button.type == buttonTypeCancel) {
          final formMessage = (state as ShowChatState).activeForm;

          emit((state as ShowChatState).copy(formValues: {}));

          if (formMessage != null) {
            await _removeMessageByIdUseCase(
              MessageUseCaseParams(
                chatId: _chatId,
                clientMessageId: formMessage.message.clientMessageId,
              ),
            );
          }
        } else if (button.type == buttonTypeSend) {
          final currentState = (state as ShowChatState);

          final formMessage = currentState.activeForm?.message.form;
          final fields = currentState.formValues;

          if (formMessage != null) {
            emit(currentState.copy(isInputFieldVisible: false, isSendFormVisible: false));

            await _sendFormChatMessageUseCase(
              FormChatMessageUseCaseParams(
                chatId: _chatId,
                form: formMessage,
                formValues: fields,
                action: button.id,
              ),
            );

            emit((state as ShowChatState).copy(formValues: {}));

            await _removeMessageByIdUseCase(
              MessageUseCaseParams(
                chatId: _chatId,
                clientMessageId: currentState.activeForm!.message.clientMessageId,
              ),
            );
          }
        }
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);

        emit(LoadingErrorState(S.current.exceptionRepoLoading));
      }
    }
  }

  FormMessageUi? getFormActive(List<MessageUi> messages) {
    try {
      final form = messages.lastWhere((element) => element is FormMessageUi);

      return form is FormMessageUi ? form : null;
    } catch (e) {
      return null;
    }
  }

  void changeFormText(ChatMessage message, String id, String value) {
    if (state is ShowChatState) {
      final current = state as ShowChatState;
      final form = current.activeForm;

      if (form != null) {
        current.formValues[id] = value;
      }
    }
  }

  void changeCheckboxValue(ChatMessage message, String id, SelectFieldItemMessage value) {
    if (state is ShowChatState) {
      final current = state as ShowChatState;
      final form = current.activeForm;

      if (form != null) {
        current.formValues[id] = value.selected.toString();
      }
    }
  }

  void changeSelectValue(ChatMessage message, String id, SelectFieldItemMessage value) {
    if (state is ShowChatState) {
      final current = state as ShowChatState;
      final form = current.activeForm;

      if (form != null) {
        current.formValues[id] = value.id;
      }
    }
  }

  void changeFormDate(ChatMessage message, String id, DateTime value) {
    if (state is ShowChatState) {
      final date = DateTime.utc(value.year, value.month, value.day);

      final current = state as ShowChatState;
      final form = current.activeForm;

      if (form != null) {
        current.formValues[id] = date.toIso8601WoUsString();
      }
    }
  }

  Future<void> vote(ChatMessage message, ChatMessageVote? vote) async {
    if (state is ShowChatState) {
      try {
        final current = state as ShowChatState;

        await _voteChatMessageUseCase(VoteChatMessageUseCaseParams(
          chatId: current.chatId,
          message: message,
          vote: vote,
        ));
        await _updateMessages(isScrollDown: false);
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);
      }
    }
  }

  @override
  Future<void> close() async {
    super.close();
    _streamSubscription.cancel();
    _chatsSubscription.cancel();
  }

  Future<List<ChatQueryExample>> _getQueryExamples(int? serviceId) async {
    try {
      if (serviceId == 2) {
        final examples = await _getChatQueryExamplesUseCase();

        return examples;
      }

      return [];
    } catch (_) {
      return [];
    }
  }
}
