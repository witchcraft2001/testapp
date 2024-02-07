part of '../greeting_cards_screen.dart';

class _Content extends StatelessWidget {
  final GreetingCardData data;

  _Content({
    required this.data,
  });

  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(title: S.current.greetingCards),
      body: _ContentBody(globalKey: _globalKey, data: data),
      floatingActionButton:
          data.appeal.isNotEmpty ? _ContentBottomButtons(globalKey: _globalKey) : null,
    );
  }
}
