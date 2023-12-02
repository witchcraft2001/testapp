part of '../tasks_vacation_screen.dart';

class _TasksList extends StatelessWidget {
  final List<ApiTaskVacation> tasks;
  final String search;

  const _TasksList({
    required this.tasks,
    required this.search,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = tasks
        .map(
          (task) => SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _TaskCard(
              key: Key(task.id.toString()),
              task: task,
            ),
          ),
        )
        .toList();

    return TasksContentReadyList(
      onChangePage: context.bloc<TasksVacationCubit>().changePage,
      onRefresh: context.bloc<TasksVacationCubit>().refresh,
      search: search,
      children: children,
    );
  }
}
