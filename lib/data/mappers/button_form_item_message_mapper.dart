// Project imports:
import 'package:terralinkapp/data/models/responses/button_form_item_message_response.dart';
import 'package:terralinkapp/domain/button_form_item_message.dart';

extension ButtonFormItemMessageMapper on ButtonFormItemMessageResponse {
  ButtonFormItemMessage toDomain() => ButtonFormItemMessage(id, title, type, hidden);
}
