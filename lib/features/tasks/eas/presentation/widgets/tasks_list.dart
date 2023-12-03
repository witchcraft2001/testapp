part of '../tasks_eas_screen.dart';

class _TasksList extends StatelessWidget {
  final List<ApiTaskEas> tasks;
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
      onChangePage: context.bloc<TasksEasCubit>().changePage,
      onRefresh: context.bloc<TasksEasCubit>().refresh,
      search: search,
      children: children,
    );
  }
}
