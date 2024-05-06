// Project imports:
import 'form_field_message.dart';
import 'select_field_item_message.dart';

class SelectFormFieldMessage extends FormFieldMessage {
  late final String description;
  late final List<SelectFieldItemMessage> selectItems;

  SelectFormFieldMessage(super.id, super.title, this.description, this.selectItems);
}
