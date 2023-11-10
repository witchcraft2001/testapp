part of '../tasks_sbs_late_screen.dart';

class _Project extends StatelessWidget {
  final List<ApiTaskSbsLate> tasks;

  const _Project({
    required this.tasks,
  });

  @override
  Widget build(BuildContext context) {
    final task = tasks.first;

    return Scaffold(
      body: TlRefresh(
        onRefresh: context.bloc<TasksSbsLateCubit>().refresh,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            TaskSbsProjectCard(
              projectId: task.projectId,
              projectName: task.project,
              am: task.am.displayName,
              pm: task.pm.displayName,
              company: task.customer,
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: tasks.length,
              itemBuilder: (_, index) => _TaskCard(
                index: index,
                task: tasks[index],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: TaskSbsProjectActions(
        onConfirm: () {
          context.bloc<TasksSbsLateCubit>().completeTasks(task.projectId);
          Navigator.pop(context);
        },
      ),
    );
  }
}
