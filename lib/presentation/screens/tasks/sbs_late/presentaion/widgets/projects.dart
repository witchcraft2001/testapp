part of '../tasks_sbs_late_screen.dart';

class _Projects extends StatelessWidget {
  final TasksStateReadyData<AppProjectSbsLate> data;

  const _Projects({required this.data});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = data.tasks
        .where((task) => task.records.isNotEmpty)
        .map(
          (task) => SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _Project(tasks: task.records),
          ),
        )
        .toList();

    return TasksContentReadyList(
      onChangePage: context.bloc<TasksSbsLateCubit>().changePage,
      onRefresh: context.bloc<TasksSbsLateCubit>().refresh,
      search: data.search,
      children: children,
    );
  }
}
