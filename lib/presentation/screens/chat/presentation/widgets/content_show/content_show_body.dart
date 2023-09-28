part of 'package:terralinkapp/presentation/screens/chat/presentation/chat_screen.dart';

class _ContentShowBody extends StatelessWidget {
  final ShowChatState state;
  final TextEditingController controller;

  const _ContentShowBody({
    required this.state,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (state.isLoading) return const CenteredProgressIndicator();

    return Column(
      children: [
        _BodyMessages(state: state),
        _BodyBottom(state: state, controller: controller),
      ],
    );
  }
}
