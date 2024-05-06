// Project imports:
import 'form_field_message.dart';
import 'select_field_item_message.dart';

class CheckboxesFormFieldMessage extends FormFieldMessage {
  late final String description;
  late final List<SelectFieldItemMessage> selectItems;

  CheckboxesFormFieldMessage(super.id, super.title, this.description, this.selectItems);
}
