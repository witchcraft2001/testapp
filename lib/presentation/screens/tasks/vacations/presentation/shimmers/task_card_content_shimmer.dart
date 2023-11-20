part of '../tasks_vacation_screen.dart';

class _TaskCardContentShimmer extends StatelessWidget {
  const _TaskCardContentShimmer();

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: TlSpaces.pb12,
      child: Padding(
        padding: TlSpaces.ph20t20b8,
        child: TlShimmer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(4, (_) => const TaskCardContentBlockShimmer()),
          ),
        ),
      ),
    );
  }
}
