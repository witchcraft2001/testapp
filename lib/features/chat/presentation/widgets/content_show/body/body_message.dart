part of 'package:terralinkapp/features/chat/presentation/chat_screen.dart';

class _BodyMessage extends StatelessWidget {
  final MessageUi message;

  const _BodyMessage({
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return switch (message) {
      DateMessageUi(date: var date) => _buildDate(context, date),
      MyMessageUi(message: var message, isFirst: var isFirst) =>
        _buildMessage(message, true, isFirst),
      SomeOneElseMessageUi(message: var message, isFirst: var isFirst) =>
        _buildMessage(message, false, isFirst),
      BotButtonsMessageUi(
        buttons: var buttons,
        activeButton: var activeButton,
        message: var message
      ) =>
        _buildButtons(context, message, buttons, activeButton),
      FormMessageUi(message: var message) => _getForm(context, message),
      // SickDayFormMessageUi(message: var message) => _getForm(context, '/sickday'),
    };
  }

  Widget _buildMessage(ChatMessage message, bool isMyMessage, bool isFirst) {
    return MyMessage(
      key: Key('${message.chatId}-${message.messageId}'),
      message: message,
      isMyMessage: isMyMessage,
      isPaddingNeed: isFirst,
    );
  }

  Widget _buildDate(BuildContext context, String date) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 14.0),
      child: Container(
        alignment: Alignment.topCenter,
        child: Text(
          date,
          style: context.appTheme?.text.w400s12cSignatures,
        ),
      ),
    );
  }

  Widget _buildButtons(
    BuildContext context,
    ChatMessage message,
    List<MenuChatMessage> buttons,
    String activeButton,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getChildrenButton(context, message, buttons, activeButton),
    );
  }

  List<Widget> _getChildrenButton(
    BuildContext context,
    ChatMessage message,
    List<MenuChatMessage> buttons,
    String activeButton,
  ) {
    final list = <Widget>[];

    for (var element in buttons) {
      list.add(Padding(
        padding: TlSpaces.pb8,
        child: IntrinsicWidth(
          child: BalloonButton(
            text: element.title,
            command: element.id,
            isSelected: element.id == activeButton,
            onPressed: (value) {
              if (activeButton.isEmpty) {
                context.bloc<ChatCubit>().onSendSelectedMenu(message.clientMessageId, value);
              }
            },
          ),
        ),
      ));
    }

    return list;
  }

  Widget _getForm(BuildContext context, ChatMessage message) {
    return Padding(
      padding: TlSpaces.pt8,
      child: Card(
        shadowColor: AppColors.stShadow,
        color: context.appTheme?.colors.bgMenu,
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: TlDecoration.brBase,
        ),
        child: Padding(
          padding: TlSpaces.ph20v12,
          child: _getFormFields(context, message),
        ),
      ),
    );
  }

  Widget _getFormFields(BuildContext context, ChatMessage message) {
    final items = <Widget>[];

    for (var element in message.form!.fields) {
      if (element is TextFormFieldMessage) {
        final subtitle = element.description;

        items.add(
          TlTextField(
            label: element.title,
            paddingLabel: subtitle.isNotEmpty ? EdgeInsets.zero : TlSpaces.pb4,
            padding: TlSpaces.pb12,
            text: '',
            subtitle: subtitle,
            onChanged: (value) {
              context.bloc<ChatCubit>().onChangedFormText(message, element.id, value);
            },
          ),
        );
      }

      if (element is CheckboxesFormFieldMessage) {
        items.add(FormCheckboxField(
          item: element,
          onChanged: (value) {
            context.bloc<ChatCubit>().onChangedCheckboxValue(message, value.id, value);
          },
        ));
      }

      if (element is SelectFormFieldMessage) {
        items.add(FormSelectField(
          title: element.title,
          item: element,
          onChanged: (value) {
            context.bloc<ChatCubit>().onChangedSelectValue(message, element.id, value);
          },
        ));
      }

      if (element is DateFormFieldMessage) {
        items.add(FormDateField(
          title: element.title,
          subtitle: element.description,
          onChanged: (value) {
            context.bloc<ChatCubit>().onChangedFormDate(message, element.id, value);
          },
        ));
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items,
    );
  }
}
