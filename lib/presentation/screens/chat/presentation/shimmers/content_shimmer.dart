part of '../chat_screen.dart';

class _ContentShimmer extends StatelessWidget {
  const _ContentShimmer();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TlAppBar(
        height: TlSizes.appBarHeightChat,
        titleWidget: _ContentShimmerAppBar(),
      ),
      body: _ContentShimmerBody(),
    );
  }
}
