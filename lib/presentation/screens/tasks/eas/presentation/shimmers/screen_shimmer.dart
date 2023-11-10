part of '../tasks_eas_screen.dart';

class _ScreenShimmer extends StatelessWidget {
  const _ScreenShimmer();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TlAppBar(
        titleWidget: TaskAppBarShimmer(),
        backgroundColor: Colors.transparent,
      ),
      body: _ContentShimmer(),
    );
  }
}
