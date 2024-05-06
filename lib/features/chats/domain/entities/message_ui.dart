// Project imports:
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/menu_chat_message.dart';

sealed class MessageUi {}

class DateMessageUi extends MessageUi {
  final String date;

  DateMessageUi(this.date);
}

class MyMessageUi extends MessageUi {
  final ChatMessage message;
  final bool isFirst;

  MyMessageUi(this.message, this.isFirst);
}

class SomeOneElseMessageUi extends MessageUi {
  final ChatMessage message;
  final bool isFirst;

  SomeOneElseMessageUi(this.message, this.isFirst);
}

class BotButtonsMessageUi extends MessageUi {
  final ChatMessage message;
  final List<MenuChatMessage> buttons;
  final String activeButton;

  BotButtonsMessageUi(this.message, this.buttons, this.activeButton);
}

class FormMessageUi extends MessageUi {
  final ChatMessage message;

  FormMessageUi(this.message);
}
