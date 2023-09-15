// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/domain/checkboxes_form_field_message.dart';
import 'package:terralinkapp/domain/form_message.dart';
import 'package:terralinkapp/domain/select_field_item_message.dart';
import 'package:terralinkapp/presentation/widgets/tl_checkbox.dart';

class FormCheckboxFieldWidget extends StatelessWidget {
  final FormMessage form;
  final String id;
  final String title;
  final String? subtitle;
  final CheckboxesFormFieldMessage item;
  final ValueChanged<SelectFieldItemMessage> onChanged;

  const FormCheckboxFieldWidget({
    super.key,
    required this.form,
    required this.id,
    required this.title,
    this.subtitle,
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
