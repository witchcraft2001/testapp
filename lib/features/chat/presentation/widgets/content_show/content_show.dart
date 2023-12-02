part of 'package:terralinkapp/features/chat/presentation/chat_screen.dart';

class _ContentShow extends StatelessWidget {
  final ShowChatState state;
  final TextEditingController controller;

  const _ContentShow({
    required this.state,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.unfocus,
      child: Scaffold(
        appBar: TlAppBar(
          height: TlSizes.appBarHeightChat,
          titleWidget: _ContentShowAppBar(state: state),
        ),
        body: _ContentShowBody(
          state: state,
          controller: controller,
        ),
      ),
    );
  }
}
