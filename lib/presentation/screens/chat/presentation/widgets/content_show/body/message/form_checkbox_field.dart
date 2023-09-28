// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/domain/checkboxes_form_field_message.dart';
import 'package:terralinkapp/domain/select_field_item_message.dart';
import 'package:terralinkapp/presentation/widgets/tl_checkbox.dart';

class FormCheckboxField extends StatelessWidget {
  final CheckboxesFormFieldMessage item;
  final ValueChanged<SelectFieldItemMessage> onChanged;

  const FormCheckboxField({
    super.key,
    required this.onChanged,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final widgets = item.selectItems
        .map((e) => TlCheckbox(
              text: e.title,
              value: e.selected,
              onChanged: (value) => onChanged(
                SelectFieldItemMessage(
                  e.id,
                  e.title,
                  e.sortId,
                  value,
                ),
              ),
            ))
        .toList();

    return Column(
      children: widgets,
    );
  }
}
