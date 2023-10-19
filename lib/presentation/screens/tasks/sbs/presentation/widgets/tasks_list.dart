part of '../tasks_sbs_screen.dart';

class _TasksList extends StatelessWidget {
  final TasksSBSState data;

  const _TasksList({required this.data});

  @override
  Widget build(BuildContext context) {
    if (data.isLoading) {
      return const _TaskCardShimmer();
    }

    final List<Widget> children = data.tasks
        .map(
          (task) => SizedBox(
            width: MediaQuery.of(context).size.width,
            child: _TaskCard(task: task, completedRecords: data.completedRecords),
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
