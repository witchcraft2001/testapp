part of 'package:terralinkapp/features/chats/presentation/chat/chat_screen.dart';

class _BodyBottom extends StatelessWidget {
  final ShowChatState state;
  final TextEditingController controller;

  const _BodyBottom({
    required this.state,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (state.isInputFieldVisible) {
      return _BodyBottomField(
        controller: controller,
        text: state.text,
        onChanged: context.bloc<ChatCubit>().changeText,
        onSendClicked: context.bloc<ChatCubit>().send,
      );
    }

    if (state.isSendFormVisible && state.activeForm != null) {
      final buttons = state.activeForm!;

      return BodyBottomButtons(
        buttons: buttons.message.form!.buttons,
        form: buttons.message.form!,
        onButtonPressed: context.bloc<ChatCubit>().pressFormButton,
      );
    }

    return const SizedBox();
  }
}
