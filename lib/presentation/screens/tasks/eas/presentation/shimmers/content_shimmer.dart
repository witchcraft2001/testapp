part of '../tasks_eas_screen.dart';

class _ContentShimmer extends StatelessWidget {
  const _ContentShimmer();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: TlSpaces.ph24v12,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        _TaskCardContentShimmer(),
        _TaskCardActionsShimmer(),
      ],
    );
  }
}
