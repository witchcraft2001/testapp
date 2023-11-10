part of '../tasks_sbs_weekly_screen.dart';

class _Projects extends StatelessWidget {
  final TasksSbsWeeklyReadyData data;

  const _Projects({required this.data});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = data.tasks
        .where((task) => task.consultants.isNotEmpty)
        .map(
          (task) => SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _Project(task: task),
          ),
        )
        .toList();

    return TasksList(
      onChangePage: context.bloc<TasksSbsWeeklyCubit>().changePage,
      onRefresh: context.bloc<TasksSbsWeeklyCubit>().refresh,
      search: data.search,
      children: children,
    );
  }
}
