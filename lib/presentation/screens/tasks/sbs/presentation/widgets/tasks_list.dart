part of '../tasks_sbs_screen.dart';

class _TasksList extends StatelessWidget {
  final List<AppTaskSBS> tasks;

  const _TasksList({
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = tasks
        .map(
          (task) => SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _TaskCard(task: task),
          ),
        )
        .toList();

    return TasksList(
      onChangePage: context.bloc<TasksSBSCubit>().changePage,
      onRefresh: context.bloc<TasksSBSCubit>().refresh,
      children: children,
    );
  }
}
