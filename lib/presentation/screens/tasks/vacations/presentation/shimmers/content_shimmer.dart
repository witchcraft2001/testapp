part of '../tasks_vacation_screen.dart';

class _ContentShimmer extends StatelessWidget {
  const _ContentShimmer();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: TlSpaces.ph24v12,
        physics: NeverScrollableScrollPhysics(),
        child: _TaskCardContentShimmer(),
      ),
      bottomNavigationBar: TaskCardActionsShimmer(),
    );
  }
}
