// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/data/repositories/chats_repository.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/data/use_cases/chat/get_all_messages_by_chat_id_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/get_chat_info_by_id_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/remove_message_by_id_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/reset_new_messages_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/send_chat_message_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/send_form_chat_message_use_case.dart';
import 'package:terralinkapp/data/use_cases/chat/send_menu_item_chat_message_use_case.dart';
import 'package:terralinkapp/domain/button_form_item_message.dart';
import 'package:terralinkapp/domain/chat_message.dart';
import 'package:terralinkapp/domain/select_field_item_message.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/screens/chat/chat_state.dart';
import 'package:terralinkapp/presentation/screens/chat/models/mappers/message_ui_mapper.dart';
import 'package:terralinkapp/presentation/screens/chat/models/message_ui.dart';

class ChatCubit extends Cubit<ChatState> {
  final GetChatInfoByIdUseCase _chatInfoByIdUseCase;
  final GetAllMessagesByChatIdUseCase _allMessagesByChatIdUseCase;
  final SendChatMessageUseCase _sendChatMessageUseCase;
  final SendMenuItemChatMessageUseCase _sendMenuItemChatMessageUseCase;
  final ResetNewMessagesUseCase _resetNewMessagesUseCase;
  final ChatsRepository _chatsRepository;
  final RemoveMessageByIdUseCase _removeMessageByIdUseCase;
  final UserService _userService;
  final SendFormChatMessageUseCase _sendFormChatMessageUseCase;
  final LogService _logService;
  final String _chatId;

  late StreamSubscription<String> _streamSubscription;

  ChatCubit(
    this._chatId,
    this._chatInfoByIdUseCase,
    this._allMessagesByChatIdUseCase,
    this._chatsRepository,
    this._userService,
    this._sendChatMessageUseCase,
    this._sendMenuItemChatMessageUseCase,
    this._resetNewMessagesUseCase,
    this._removeMessageByIdUseCase,
    this._sendFormChatMessageUseCase,
    this._logService,
  ) : super(InitState()) {
    _streamSubscription = _chatsRepository.chatMessagesUpdatesSubject
        .where((event) => event == _chatId)
        .debounceTime(const Duration(milliseconds: 300))
        .listen((event) async {
      await _updateMessages(isScrollDown: true);
    });
  }

  Future onInit(String id) async {
    final newState = ShowChatState.getEmpty().copy(chatId: id);
    emit(newState);

    try {
      final info = await _chatInfoByIdUseCase.run(id);

      final updated = newState.copy(
        chatId: id,
        isLoading: false,
        isOnline: info.isOnline,
        avatar: info.avatar,
        name: info.name,
      );
      emit(updated);

      await _updateMessages(isScrollDown: true);
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      emit(LoadingErrorState(S.current.loadingError));
    }
  }

  void onUpdateText(String text) {
    if (state is ShowChatState) {
      final current = state as ShowChatState;
      emit(current.copy(text: text));
    }
  }

  Future onSendClicked() async {
    if (state is ShowChatState) {
      try {
        if ((state as ShowChatState).text.isEmpty) {
          return;
        }

        emit((state as ShowChatState).copy(isSending: true));

        final current = state as ShowChatState;

        await _sendChatMessageUseCase.run(current.chatId, current.text);
        await _updateMessages(isScrollDown: true, text: '');
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);

        emit(LoadingErrorState(S.current.loadingError));
      }
    }
  }

  Future onSendSelectedMenu(String menuId, String value) async {
    if (state is ShowChatState) {
      try {
        final current = state as ShowChatState;

        _sendMenuItemChatMessageUseCase.run(current.chatId, menuId, value);

        emit(current.copy(isSending: true));
        await _updateMessages(isScrollDown: false);
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);

        emit(LoadingErrorState(S.current.loadingError));
      }
    }
  }

  Future _updateMessages({required bool isScrollDown, String? text}) async {
    final messages = await _allMessagesByChatIdUseCase.run(_chatId);
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
      text: text,
      isInputFieldVisible: formMessageUi == null,
      isSendFormVisible: formMessageUi != null,
      activeForm: formMessageUi,
    ));

    if (messages.any((element) => !element.isMine && element.isUnread)) {
      _resetNewMessagesUseCase.run(_chatId);
    }
  }

  Future onFormButtonPressed(ButtonFormItemMessage button) async {
    if (state is ShowChatState) {
      try {
        if (button.type == buttonTypeCancel) {
          final formMessage = (state as ShowChatState).activeForm;

          emit((state as ShowChatState).copy(formValues: {}));

          if (formMessage != null) {
            await _removeMessageByIdUseCase.run(_chatId, formMessage.message.clientMessageId);
          }
        } else if (button.type == buttonTypeSend) {
          final currentState = (state as ShowChatState);

          final formMessage = currentState.activeForm?.message.form;
          final fields = currentState.formValues;

          if (formMessage != null) {
            emit(currentState.copy(isInputFieldVisible: false, isSendFormVisible: false));

            await _sendFormChatMessageUseCase.run(_chatId, formMessage, fields, button.id);

            emit((state as ShowChatState).copy(formValues: {}));

            await _removeMessageByIdUseCase.run(
              _chatId,
              currentState.activeForm!.message.clientMessageId,
            );
          }
        }
      } catch (e, stackTrace) {
        await _logService.recordError(e, stackTrace);

        emit(LoadingErrorState(S.current.loadingError));
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

  void onChangedFormText(ChatMessage message, String id, String value) {
    if (state is ShowChatState) {
      final current = state as ShowChatState;
      final form = current.activeForm;

      if (form != null) {
        current.formValues[id] = value;
      }
    }
  }

  void onChangedCheckboxValue(ChatMessage message, String id, SelectFieldItemMessage value) {
    if (state is ShowChatState) {
      final current = state as ShowChatState;
      final form = current.activeForm;

      if (form != null) {
        current.formValues[id] = value.selected.toString();
      }
    }
  }

  void onChangedSelectValue(ChatMessage message, String id, SelectFieldItemMessage value) {
    if (state is ShowChatState) {
      final current = state as ShowChatState;
      final form = current.activeForm;

      if (form != null) {
        current.formValues[id] = value.id;
      }
    }
  }

  void onChangedFormDate(ChatMessage message, String id, DateTime value) {
    if (state is ShowChatState) {
      final date = DateTime.utc(value.year, value.month, value.day);

      final current = state as ShowChatState;
      final form = current.activeForm;

      if (form != null) {
        current.formValues[id] = date.toIso8601WoUsString();
      }
    }
  }

  @override
  Future<void> close() async {
    super.close();
    _streamSubscription.cancel();
  }
}
