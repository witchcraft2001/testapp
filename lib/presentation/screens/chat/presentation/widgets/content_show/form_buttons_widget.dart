// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/domain/button_form_item_message.dart';
import 'package:terralinkapp/domain/form_message.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';

class FormButtonsWidget extends StatefulWidget {
  final List<ButtonFormItemMessage> buttons;
  final FormMessage form;
  final ValueChanged<ButtonFormItemMessage> onButtonPressed;

  const FormButtonsWidget({
    super.key,
    required this.buttons,
    required this.form,
    required this.onButtonPressed,
  });

  @override
  State<FormButtonsWidget> createState() => _FormButtonsWidgetState();
}

class _FormButtonsWidgetState extends State<FormButtonsWidget> {
  bool isExtended = false;

  @override
  Widget build(BuildContext context) {
    final visibleButtons = widget.buttons.where((element) => element.hidden == isExtended);
    if (visibleButtons.length == 1) {
      final button = visibleButtons.first;

      return _getButton(button, const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0));
    } else {
      final List<Widget> list = [];
      for (var element in visibleButtons) {
        list.add(
          Flexible(child: _getButton(element, const EdgeInsets.symmetric(horizontal: 10.0))),
        );
      }

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: list,
        ),
      );
    }
  }

  Widget _getButton(
    ButtonFormItemMessage button,
    EdgeInsets padding,
  ) {
    return TlButton(
      title: button.title,
      style: AppBtnStyle.base,
      type: AppBtnType.secondary,
      padding: padding,
      withOverflow: true,
      onPressed: () {
        if (button.type == buttonTypeExpand) {
          setState(() {
            isExtended = !isExtended;
          });
        } else {
          widget.onButtonPressed(button);
        }
      },
    );
  }
}
