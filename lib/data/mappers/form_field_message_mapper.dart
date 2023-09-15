// Project imports:
import 'package:terralinkapp/data/mappers/select_field_item_message_mapper.dart';
import 'package:terralinkapp/data/models/responses/checkboxes_form_field_message_response.dart';
import 'package:terralinkapp/data/models/responses/date_form_field_message_response.dart';
import 'package:terralinkapp/data/models/responses/form_field_message_response.dart';
import 'package:terralinkapp/data/models/responses/select_form_field_message_response.dart';
import 'package:terralinkapp/data/models/responses/text_form_field_message_response.dart';
import 'package:terralinkapp/domain/checkboxes_form_field_message.dart';
import 'package:terralinkapp/domain/date_form_field_message.dart';
import 'package:terralinkapp/domain/form_field_message.dart';
import 'package:terralinkapp/domain/select_form_field_message.dart';
import 'package:terralinkapp/domain/text_form_field_message.dart';

extension FormFieldMessageMapper on FormFieldMessageResponse {
  FormFieldMessage toDomain() {
    if (this is TextFormFieldMessageResponse) {
      return TextFormFieldMessage(id, title, (this as TextFormFieldMessageResponse).description);
    } else if (this is DateFormFieldMessageResponse) {
      return DateFormFieldMessage(id, title, (this as DateFormFieldMessageResponse).description);
    } else if (this is SelectFormFieldMessageResponse) {
      final response = this as SelectFormFieldMessageResponse;

      return SelectFormFieldMessage(
        id,
        title,
        response.description,
        response.selectItems.map((e) => e.toDomain()).toList(),
      );
    } else if (this is CheckboxesFormFieldMessageResponse) {
      final response = this as CheckboxesFormFieldMessageResponse;
      
      return CheckboxesFormFieldMessage(
        id,
        title,
        response.description,
        response.selectItems.map((e) => e.toDomain()).toList(),
      );
    }
    throw Exception('Illegal value $this');
  }
}
