// Project imports:
import 'package:terralinkapp/features/chats/data/entities/responses/form_field_message_response.dart';
import 'package:terralinkapp/features/chats/data/entities/responses/form_message_response.dart';
import 'package:terralinkapp/features/chats/data/mappers/button_form_item_message_mapper.dart';
import 'package:terralinkapp/features/chats/data/mappers/form_field_message_mapper.dart';
import 'package:terralinkapp/features/chats/domain/entities/form_field_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/form_message.dart';

extension FormMessageMapper on FormMessageResponse? {
  FormMessage? toDomain() => this != null
      ? FormMessage(
          this!.id,
          this!.title,
          _mapForm(this?.fields),
          this!.buttons.map((e) => e.toDomain()).toList(),
        )
      : null;

  List<FormFieldMessage> _mapForm(List<FormFieldMessageResponse>? fields) {
    if (fields == null) return [];

    return fields.map((e) => e.toDomain()).toList();
  }
}
