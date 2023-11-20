part of '../tasks_sbs_late_screen.dart';

class _ContentShimmer extends StatelessWidget {
  const _ContentShimmer();

  @override
  Widget build(BuildContext context) {
    return const TaskSbsProjectShimmer(
      child: _TaskCardShimmer(),
    );
  }
}
