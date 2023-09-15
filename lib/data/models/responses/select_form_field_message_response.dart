// Project imports:
import 'package:terralinkapp/data/models/responses/form_field_message_response.dart';
import 'select_field_item_message_response.dart';

class SelectFormFieldMessageResponse extends FormFieldMessageResponse {
  late final String description;
  late final List<SelectFieldItemMessageResponse> selectItems;

  SelectFormFieldMessageResponse(super.id, super.title, this.description, this.selectItems);

  SelectFormFieldMessageResponse.fromMappedJson(Map<String, dynamic> json)
      : super(json['id'], json['title']) {
    description = json['description'];
    selectItems = SelectFieldItemListMessageResponse.fromMappedJson(json['select_fields']).list;
  }
}
