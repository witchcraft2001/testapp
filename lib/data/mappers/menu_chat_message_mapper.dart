// Project imports:
import 'package:terralinkapp/data/models/responses/menu_chat_message_response.dart';
import 'package:terralinkapp/domain/menu_chat_message.dart';

extension MenuChatMessageExtensions on MenuChatMessageResponse {
  MenuChatMessage toDomain() => MenuChatMessage(title, id);
}
