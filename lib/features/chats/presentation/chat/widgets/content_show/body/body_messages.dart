part of 'package:terralinkapp/features/chats/presentation/chat/chat_screen.dart';

class _BodyMessages extends StatefulWidget {
  final ShowChatState state;

  const _BodyMessages({
    required this.state,
  });

  @override
  State<_BodyMessages> createState() => _BodyMessagesState();
}

class _BodyMessagesState extends State<_BodyMessages> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final messages = widget.state.messages;
    final isAnswerPlaceholderVisible = widget.state.isAnswerPlaceholderVisible;

    if (widget.state.isScrollDown) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _handleScrollToEnd());
    }

    final length = isAnswerPlaceholderVisible ? messages.length + 1 : messages.length;

    return ListView.builder(
      key: PageStorageKey(AppRoutes.chats.name),
      controller: _scrollController,
      padding: TlSpaces.ph24v12,
      itemCount: length,
      itemBuilder: (_, index) {
        if (isAnswerPlaceholderVisible && index == length - 1) {
          return const BotAnswerPlaceholder();
        }

        return _BodyMessage(message: messages[index]);
      },
    );
  }

  void _handleScrollToEnd() {
    const animation = Curves.easeInOut;
    final firstMaxScroll = _scrollController.position.maxScrollExtent;

    _scrollController
        .animateTo(firstMaxScroll, duration: _setDuration(200), curve: animation)
        .then((_) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: _setDuration(100),
        curve: animation,
      );
    });
  }

  Duration _setDuration(int value) => Duration(milliseconds: value);
}
