// Project imports:
import 'package:terralinkapp/features/chats/domain/entities/message_ui.dart';
import 'package:terralinkapp/features/chats/domain/entities/query_examples/chat_query_example.dart';

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
  final bool isAnswerPlaceholderVisible;
  final String chatId;
  final String? avatar;
  final String name;
  final String text;
  final List<MessageUi> messages;
  final bool isScrollDown;
  final FormMessageUi? activeForm;
  final Map<String, String> formValues;
  final int? serviceId;
  List<ChatQueryExample> queryExamples;

  ShowChatState(
    this.isLoading,
    this.isSending,
    this.isOnline,
    this.isInputFieldVisible,
    this.isSendFormVisible,
    this.isAnswerPlaceholderVisible,
    this.chatId,
    this.avatar,
    this.name,
    this.text,
    this.messages,
    this.isScrollDown,
    this.activeForm,
    this.formValues,
    this.serviceId,
    this.queryExamples,
  );

  ShowChatState.getEmpty()
      : isLoading = true,
        isSending = false,
        chatId = '',
        isOnline = false,
        isInputFieldVisible = false,
        isSendFormVisible = false,
        isAnswerPlaceholderVisible = false,
        avatar = null,
        name = '',
        text = '',
        messages = const [],
        isScrollDown = false,
        activeForm = null,
        formValues = {},
        serviceId = null,
        queryExamples = const [];
}

extension ChatStateExtensions on ShowChatState {
  ShowChatState copy({
    bool? isLoading,
    bool? isSending,
    bool? isOnline,
    bool? isInputFieldVisible,
    bool? isSendFormVisible,
    bool? isAnswerPlaceholderVisible,
    String? chatId,
    String? avatar,
    String? name,
    String? text,
    List<MessageUi>? messages,
    bool? isScrollDown,
    FormMessageUi? activeForm,
    Map<String, String>? formValues,
    int? serviceId,
    List<ChatQueryExample>? queryExamples,
  }) =>
      ShowChatState(
        isLoading ?? this.isLoading,
        isSending ?? this.isSending,
        isOnline ?? this.isOnline,
        isInputFieldVisible ?? this.isInputFieldVisible,
        isSendFormVisible ?? this.isSendFormVisible,
        isAnswerPlaceholderVisible ?? this.isAnswerPlaceholderVisible,
        chatId ?? this.chatId,
        avatar ?? this.avatar,
        name ?? this.name,
        text ?? this.text,
        messages ?? this.messages,
        isScrollDown ?? false,
        activeForm ?? this.activeForm,
        formValues ?? this.formValues,
        serviceId ?? this.serviceId,
        queryExamples ?? this.queryExamples,
      );
}
