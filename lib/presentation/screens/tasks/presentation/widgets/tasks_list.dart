part of '../tasks_screen.dart';

class _TasksList extends StatelessWidget {
  final List<Task> tasks;

  const _TasksList({
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return TlEmptyData(
        message: S.current.tasksEmptyList,
        onRefresh: context.bloc<TasksCubit>().onRefresh,
      );
    }

    return PageView(
      onPageChanged: context.bloc<TasksCubit>().onPageChanged,
      children: tasks
          .map(
            (task) => SizedBox(
              width: MediaQuery.of(context).size.width,
              child: _CardTask(
                key: Key(task.id.toString()),
                task: task,
              ),
            ),
          )
          .toList(),
    );
  }
}
