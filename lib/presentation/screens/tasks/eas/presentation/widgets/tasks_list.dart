part of '../tasks_eas_screen.dart';

class _TasksList extends StatelessWidget {
  final List<AppTaskEAS> tasks;

  const _TasksList({
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = tasks.isEmpty
        ? []
        : tasks
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

    return TasksList(
      onChangePage: context.bloc<TasksEASCubit>().changePage,
      onRefresh: context.bloc<TasksEASCubit>().refresh,
      children: children,
    );
  }
}
