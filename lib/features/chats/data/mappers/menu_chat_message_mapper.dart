// Project imports:
import 'package:terralinkapp/features/chats/data/entities/responses/menu_chat_message_response.dart';
import 'package:terralinkapp/features/chats/domain/entities/menu_chat_message.dart';

extension MenuChatMessageExtensions on MenuChatMessageResponse {
  MenuChatMessage toDomain() => MenuChatMessage(title, id);
}
