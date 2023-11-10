part of '../tasks_sbs_late_screen.dart';

class _Projects extends StatelessWidget {
  final TasksSbsLateReadyState data;

  const _Projects({required this.data});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];

    for (final key in data.tasks.keys) {
      final tasks = data.tasks[key];

      if (tasks != null && tasks.isNotEmpty) {
        children.add(
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _Project(
              tasks: tasks,
            ),
          ),
        );
      }
    }

    return TasksList(
      onChangePage: context.bloc<TasksSbsLateCubit>().changePage,
      onRefresh: context.bloc<TasksSbsLateCubit>().refresh,
      search: data.search,
      children: children,
    );
  }
}
