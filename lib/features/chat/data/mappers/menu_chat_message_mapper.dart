// Project imports:
import 'package:terralinkapp/features/chat/data/entities/responses/menu_chat_message_response.dart';
import 'package:terralinkapp/features/chat/domain/entities/menu_chat_message.dart';

extension MenuChatMessageExtensions on MenuChatMessageResponse {
  MenuChatMessage toDomain() => MenuChatMessage(title, id);
}
