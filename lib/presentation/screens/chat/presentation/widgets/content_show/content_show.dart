part of '../../chat_screen.dart';

class _ContentShow extends StatelessWidget {
  final ShowChatState state;
  final TextEditingController controller;
  final ScrollController scrollController;

  const _ContentShow({
    required this.state,
    required this.controller,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        height: TlSizes.appBarHeightChat,
        titleWidget: _ContentShowAppBar(state: state),
      ),
      body: _ContentShowBody(
        state: state,
        controller: controller,
        scrollController: scrollController,
      ),
    );
  }
}
