part of '../tasks_eas_screen.dart';

class _TaskCard extends StatelessWidget {
  final Task task;

  const _TaskCard({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return TlRefresh(
      onRefresh: context.bloc<TasksCubit>().onRefresh,
      child: ListView(
        padding: TlSpaces.ph24v12,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          _TaskCardContent(task: task),
          _TaskCardActions(task: task),
        ],
      ),
    );
  }
}
