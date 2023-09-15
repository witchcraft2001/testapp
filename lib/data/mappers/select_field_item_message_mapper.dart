// Project imports:
import 'package:terralinkapp/data/models/responses/select_field_item_message_response.dart';
import 'package:terralinkapp/domain/select_field_item_message.dart';

extension SelectFieldItemMessageMapper on SelectFieldItemMessageResponse {
  SelectFieldItemMessage toDomain() => SelectFieldItemMessage(id, title, sortId, selected);
}
