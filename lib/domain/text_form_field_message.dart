// Project imports:
import 'form_field_message.dart';

class TextFormFieldMessage extends FormFieldMessage {
  late final String description;

  TextFormFieldMessage(super.id, super.title, this.description);
}
