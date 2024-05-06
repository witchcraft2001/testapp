// Project imports:
import 'form_field_message_response.dart';

class DateFormFieldMessageResponse extends FormFieldMessageResponse {
  late final String description;

  DateFormFieldMessageResponse(super.id, super.title, this.description);

  DateFormFieldMessageResponse.fromMappedJson(Map<String, dynamic> json)
      : super(json['id'], json['title']) {
    description = json['description'];
  }
}
