// Project imports:
import 'package:terralinkapp/features/chat/data/entities/responses/button_form_item_message_response.dart';
import 'package:terralinkapp/features/chat/domain/entities/button_form_item_message.dart';

extension ButtonFormItemMessageMapper on ButtonFormItemMessageResponse {
  ButtonFormItemMessage toDomain() => ButtonFormItemMessage(
        id,
        title,
        type,
        hidden,
        sortId,
      );
}
