// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/features/chat/data/entities/responses/checkboxes_form_field_message_response.dart';
import 'package:terralinkapp/features/chat/data/entities/responses/text_form_field_message_response.dart';
import 'button_form_item_message_response.dart';
import 'date_form_field_message_response.dart';
import 'form_field_message_response.dart';
import 'select_form_field_message_response.dart';

class FormMessageResponse {
  final String id;
  final String title;
  final List<FormFieldMessageResponse> fields;
  final List<ButtonFormItemMessageResponse> buttons;

  FormMessageResponse(this.id, this.title, this.fields, this.buttons);

  FormMessageResponse.fromMappedJson(Map<String, dynamic> json, this.title)
      : id = json['id'],
        buttons = ButtonFormItemListMessageResponse.fromMappedJson(json['buttons']).list,
        fields = _parseFields(json['fields']);

  static List<FormFieldMessageResponse> _parseFields(List<dynamic>? json) {
    if (json == null) {
      return [];
    }

    return json.map((e) => _parseField(e)).toList();
  }

  static FormFieldMessageResponse _parseField(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'text':
        return TextFormFieldMessageResponse.fromMappedJson(json);
      case 'date':
        return DateFormFieldMessageResponse.fromMappedJson(json);
      case 'select':
        return SelectFormFieldMessageResponse.fromMappedJson(json);
      case 'checkbox':
        return CheckboxesFormFieldMessageResponse.fromMappedJson(json);
      default:
        throw RepositoryException(
          message: 'Unknown field type $type',
          type: TlExceptionType.repoUnknownField,
        );
    }
  }
}
