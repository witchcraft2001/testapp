part of '../tasks_eas_screen.dart';

class _ContentShow extends StatelessWidget {
  final List<ApiTaskEas> tasks;
  final int page;
  final String search;
  final bool isLoading;

  const _ContentShow({
    required this.isLoading,
    required this.page,
    required this.tasks,
    required this.search,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: TasksAppBar(
          hint: S.current.tasksEasSearchHint,
          page: page + 1,
          pages: tasks.length,
          search: search,
          onChanged: context.bloc<TasksEasCubit>().search,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: isLoading ? const _ContentShimmer() : _TasksList(tasks: tasks, search: search),
    );
  }
}
