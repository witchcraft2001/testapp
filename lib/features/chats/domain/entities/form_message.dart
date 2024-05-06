// Project imports:
import 'button_form_item_message.dart';
import 'form_field_message.dart';

class FormMessage {
  final String id;
  final String title;
  final List<FormFieldMessage> fields;
  final List<ButtonFormItemMessage> buttons;

  FormMessage(this.id, this.title, this.fields, this.buttons);
}
