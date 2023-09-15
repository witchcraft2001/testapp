// Project imports:
import 'form_field_message_response.dart';

class TextFormFieldMessageResponse extends FormFieldMessageResponse {
  late final String description;

  TextFormFieldMessageResponse(super.id, super.title, this.description);

  TextFormFieldMessageResponse.fromMappedJson(Map<String, dynamic> json)
      : super(json['id'], json['title']) {
    description = json['description'];
  }
}
