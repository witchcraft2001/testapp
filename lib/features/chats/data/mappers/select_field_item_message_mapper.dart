// Project imports:
import 'package:terralinkapp/features/chats/data/entities/responses/select_field_item_message_response.dart';
import 'package:terralinkapp/features/chats/domain/entities/select_field_item_message.dart';

extension SelectFieldItemMessageMapper on SelectFieldItemMessageResponse {
  SelectFieldItemMessage toDomain() => SelectFieldItemMessage(id, title, sortId, selected);
}
