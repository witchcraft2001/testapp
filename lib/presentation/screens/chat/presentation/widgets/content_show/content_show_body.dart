part of '../../chat_screen.dart';

class _ContentShowBody extends StatelessWidget {
  final ShowChatState state;
  final TextEditingController controller;
  final ScrollController scrollController;

  const _ContentShowBody({
    required this.state,
    required this.controller,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) return const CenteredProgressIndicator();

    return Column(
      children: [
        _getMessageList(context, state),
        _getBottomForm(context, state),
      ],
    );
  }

  Widget _getMessageList(BuildContext context, ShowChatState state) {
    return Flexible(
      child: ListView.builder(
        controller: scrollController,
        padding: TlSpaces.ph24v12,
        itemCount: state.messages.length,
        itemBuilder: (context, index) {
          return switch (state.messages[index]) {
            DateMessageUi(date: var date) => _getDate(context, date),
            MyMessageUi(message: var message, isFirst: var isFirst) =>
              _getMessage(message, true, isFirst),
            SomeOneElseMessageUi(message: var message, isFirst: var isFirst) =>
              _getMessage(message, false, isFirst),
            BotButtonsMessageUi(
              buttons: var buttons,
              activeButton: var activeButton,
              message: var message
            ) =>
              _getButtons(context, message, buttons, activeButton),
            FormMessageUi(message: var message) => _getForm(context, message),
            // SickDayFormMessageUi(message: var message) => _getForm(context, '/sickday'),
          };
        },
      ),
    );
  }

  Widget _getMessage(ChatMessage message, bool isMyMessage, bool isFirst) {
    return MyMessage(
      key: Key('${message.chatId}-${message.messageId}'),
      message: message,
      isMyMessage: isMyMessage,
      isPaddingNeed: isFirst,
    );
  }

  Widget _getDate(BuildContext context, String date) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 14.0),
      child: Container(
        alignment: Alignment.topCenter,
        child: Text(
          date,
          style: ThemeProvider.labelSmall.copyWith(color: AppColors.textSignatures),
        ),
      ),
    );
  }

  Widget _getButtons(
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
    final list = List<Widget>.of([], growable: true);

    for (var element in buttons) {
      list.add(Padding(
        padding: TlSpaces.pb8,
        child: IntrinsicWidth(
          child: BalloonButton(
            text: element.title,
            command: element.id,
            isSelected: element.id == activeButton,
            onPressed: (String value) {
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
        shadowColor: context.appTheme?.appTheme.shadow,
        color: context.appTheme?.appTheme.specialColorMenu,
        elevation: 6.0,
        margin: const EdgeInsets.all(1.0),
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
    final List<Widget> items = [];
    // items.add(Text(
    //   message.form?.title ?? '',
    //   style: ThemeProvider.bodySmall.copyWith(color: AppColors.textSignatures),
    // ));
    // items.add(const SizedBox(
    //   height: 8.0,
    // ));

    for (var element in message.form!.fields) {
      if (element is TextFormFieldMessage) {
        items.add(FormTextFieldWidget(
          form: message.form!,
          title: element.title,
          id: element.id,
          subtitle: element.description,
          onChanged: (value) {
            context.bloc<ChatCubit>().onChangedFormText(message, element.id, value);
          },
        ));
      } else if (element is CheckboxesFormFieldMessage) {
        items.add(FormCheckboxFieldWidget(
          form: message.form!,
          id: element.id,
          title: element.title,
          onChanged: (value) {
            //todo: Спросить у архитектора, как правильно отправить чекбоксы
            context.bloc<ChatCubit>().onChangedCheckboxValue(message, value.id, value);
          },
          item: element,
        ));
      } else if (element is SelectFormFieldMessage) {
        items.add(FormSelectFieldWidget(
          form: message.form!,
          id: element.id,
          title: element.title,
          item: element,
          onChanged: (value) {
            context.bloc<ChatCubit>().onChangedSelectValue(message, element.id, value);
          },
        ));
      } else if (element is DateFormFieldMessage) {
        items.add(FormDateFieldWidget(
          form: message.form!,
          title: element.title,
          id: element.id,
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

  Widget _getBottomForm(
    BuildContext context,
    ShowChatState state,
  ) {
    if (state.isInputFieldVisible) {
      return _ChatTextField(
        controller: controller,
        text: state.text,
        onChanged: context.bloc<ChatCubit>().onUpdateText,
        onSendClicked: context.bloc<ChatCubit>().onSendClicked,
      );
    }

    if (state.isSendFormVisible) {
      final buttons = state.activeForm;

      if (buttons != null) {
        return FormButtonsWidget(
          buttons: buttons.message.form!.buttons,
          form: buttons.message.form!,
          onButtonPressed: context.bloc<ChatCubit>().onFormButtonPressed,
        );
      }

      return Container();
    }

    return Container();
  }
}
