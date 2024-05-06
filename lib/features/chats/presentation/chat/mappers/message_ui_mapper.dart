// Project imports:
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/message_ui.dart';

extension MessageUiMapper on List<ChatMessage> {
  List<MessageUi> toUi(String userId) {
    final list = List<MessageUi>.of([], growable: true);
    String lastMessageUsername = '';
    DateTime? lastDate;

    for (var msg in this) {
      if (lastDate == null || !msg.dateTime.isSameDay(lastDate)) {
        lastDate = msg.dateTime;
        list.add(DateMessageUi(msg.dateTime.toShortDateString()));
        lastMessageUsername = msg.username;
      }

      if (msg.isMine) {
        list.add(MyMessageUi(msg, lastMessageUsername != msg.username));
      } else {
        if (msg.menu.isEmpty) {
          if (msg.form != null) {
            list.add(FormMessageUi(msg));
          } else {
            list.add(SomeOneElseMessageUi(msg, lastMessageUsername != msg.username));
          }
        } else {
          list.add(BotButtonsMessageUi(msg, msg.menu, msg.activeButton ?? ''));
        }
      }

      lastMessageUsername = msg.username;
    }

    return list;
  }
}
