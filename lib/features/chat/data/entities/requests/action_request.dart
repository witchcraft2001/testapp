// Project imports:
import 'package:terralinkapp/features/chat/data/entities/requests/form_request.dart';

sealed class ActionRequest {
  final String action;

  ActionRequest(this.action);
}

class GetChatsActionRequest extends ActionRequest {
  GetChatsActionRequest() : super('get_chats');
}

class SendMessageActionRequest extends ActionRequest {
  final String clientMessageId;
  final String chatId;
  final String text;

  SendMessageActionRequest(this.clientMessageId, this.chatId, this.text) : super('send_message');

  Map<String, dynamic> toJson() => {
        'action': action,
        'client_message_id': clientMessageId,
        'message_id': clientMessageId,
        'chat_id': chatId,
        'text': text,
      };
}

class ForceMenuActionRequest extends ActionRequest {
  final String menuId;
  final String chatId;
  final String valueId;

  ForceMenuActionRequest({required this.menuId, required this.valueId, required this.chatId}) : super('force_menu');

  Map<String, dynamic> toJson() => {
    'action': action,
    'chat_id': chatId,
    'menu_id': menuId,
    'value_id': valueId,
  };
}

class SendFormActionRequest extends ActionRequest {
  final String chatId;
  final DateTime time;
  final FormRequest form;

  SendFormActionRequest(this.chatId, this.time, this.form) : super('send_form');

  Map<String, dynamic> toJson() => {
    'action': action,
    'chat_id': chatId,
    'ctime': time.toIso8601String(),
    'form': form.toJson(),
  };
}

class PushTokenActionRequest extends ActionRequest {
  final String type;
  final String value;

  PushTokenActionRequest(this.type, this.value) : super('push_token');

  Map<String, dynamic> toJson() => {
    'action': action,
    'type': type,
    'value': value,
  };
}
