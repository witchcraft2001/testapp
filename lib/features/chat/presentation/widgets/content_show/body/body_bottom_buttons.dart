// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/features/chat/domain/entities/button_form_item_message.dart';
import 'package:terralinkapp/features/chat/domain/entities/form_message.dart';

class BodyBottomButtons extends StatefulWidget {
  final List<ButtonFormItemMessage> buttons;
  final FormMessage form;
  final ValueChanged<ButtonFormItemMessage> onButtonPressed;

  const BodyBottomButtons({
    super.key,
    required this.buttons,
    required this.form,
    required this.onButtonPressed,
  });

  @override
  State<BodyBottomButtons> createState() => _BodyBottomButtonsState();
}

class _BodyBottomButtonsState extends State<BodyBottomButtons> {
  bool isExtended = false;

  @override
  Widget build(BuildContext context) {
    final visibleButtons = widget.buttons
      ..where((element) => element.hidden == isExtended)
      ..sort((a, b) => a.sortId.compareTo(b.sortId));

    if (visibleButtons.length == 1) {
      final button = visibleButtons.first;

      return _getButton(button, TlSpaces.ph24v16);
    } else {
      final List<Widget> list = [];

      for (var element in visibleButtons) {
        list.add(Flexible(child: _getButton(element, TlSpaces.ph8)));
      }

      return Padding(
        padding: TlSpaces.p16,
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
          setState(() => isExtended = !isExtended);
        } else {
          widget.onButtonPressed(button);
        }
      },
    );
  }
}
