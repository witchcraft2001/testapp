part of '../../greeting_cards_screen.dart';

class _ContentReady extends StatelessWidget {
  final GreetingCardsReadyData data;

  _ContentReady({
    required this.data,
  });

  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Body(globalKey: _globalKey, data: data),
      floatingActionButton: data.selected?.isAppeal == true
          ? data.appeal.isNotEmpty
              ? _BodyBottomButtons(globalKey: _globalKey)
              : null
          : _BodyBottomButtons(globalKey: _globalKey),
    );
  }
}
