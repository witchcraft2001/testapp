// Project imports:
import 'form_field_request.dart';

class FormRequest {
  final String id;
  final List<FormFieldRequest> fields;
  final String action;

  FormRequest(
    this.id,
    this.fields,
    this.action,
  );

  Map<String, dynamic> toJson() => {
        'id': id,
        'fields': fields.map((e) => e.toJson()).toList(),
        'action': action,
      };
}
