part of '../../greeting_cards_screen.dart';

class _ContentReady extends StatelessWidget {
  final GlobalKey globalKey;
  final GreetingCardsReadyData data;

  const _ContentReady({
    required this.globalKey,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(globalKey: globalKey, data: data),
      floatingActionButton: data.isShowActions
          ? _BodyBottomButtons(globalKey: globalKey, isShowActions: data.isShowActions)
          : null,
    );
  }
}
