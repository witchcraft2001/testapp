// Project imports:
import 'package:terralinkapp/presentation/screens/chat/domain/models/message_ui.dart';

sealed class ChatState {}

class InitState extends ChatState {}

class LoadingErrorState extends ChatState {
  final String message;

  LoadingErrorState(this.message);
}

class ShowChatState extends ChatState {
  final bool isLoading;
  final bool isSending;
  final bool isOnline;
  final bool isInputFieldVisible;
  final bool isSendFormVisible;
  final String chatId;
  final String? avatar;
  final String name;
  final String text;
  final List<MessageUi> messages;
  final bool isScrollDown;
  final FormMessageUi? activeForm;
  final Map<String, String> formValues;

  ShowChatState(
    this.isLoading,
    this.isSending,
    this.isOnline,
    this.isInputFieldVisible,
    this.isSendFormVisible,
    this.chatId,
    this.avatar,
    this.name,
    this.text,
    this.messages,
    this.isScrollDown,
    this.activeForm,
    this.formValues,
  );

  ShowChatState.getEmpty()
      : isLoading = true,
        isSending = false,
        chatId = '',
        isOnline = false,
        isInputFieldVisible = false,
        isSendFormVisible = false,
        avatar = null,
        name = '',
        text = '',
        messages = [],
        isScrollDown = false,
        activeForm = null,
        formValues = {};
}

extension ChatStateExtensions on ShowChatState {
  ShowChatState copy({
    bool? isLoading,
    bool? isSending,
    bool? isOnline,
    bool? isInputFieldVisible,
    bool? isSendFormVisible,
    String? chatId,
    String? avatar,
    String? name,
    String? text,
    List<MessageUi>? messages,
    bool? isScrollDown,
    FormMessageUi? activeForm,
    Map<String, String>? formValues,
  }) =>
      ShowChatState(
        isLoading ?? this.isLoading,
        isSending ?? this.isSending,
        isOnline ?? this.isOnline,
        isInputFieldVisible ?? this.isInputFieldVisible,
        isSendFormVisible ?? this.isSendFormVisible,
        chatId ?? this.chatId,
        avatar ?? this.avatar,
        name ?? this.name,
        text ?? this.text,
        messages ?? this.messages,
        isScrollDown ?? false,
        activeForm ?? this.activeForm,
        formValues ?? this.formValues,
      );
}
