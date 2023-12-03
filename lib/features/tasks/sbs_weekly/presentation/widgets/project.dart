part of '../tasks_sbs_weekly_screen.dart';

class _Project extends StatelessWidget {
  final ApiTaskSbsWeekly task;

  const _Project({
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TlRefresh(
        onRefresh: context.bloc<TasksSbsWeeklyCubit>().refresh,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            TaskSbsProjectCard(
              projectId: task.projectId,
              projectName: task.projectName,
              am: task.amName,
              pm: task.pmName,
              company: task.company,
              isDelegated: task.isDelegated,
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: task.consultants.length,
              itemBuilder: (_, index) => _TaskCardConsultant(
                index: index,
                projectId: task.projectId,
                consultant: task.consultants[index],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: TaskSbsProjectActions(
        onConfirm: () {
          context.bloc<TasksSbsWeeklyCubit>().completeTask(task);
          Navigator.pop(context);
        },
      ),
    );
  }
}
