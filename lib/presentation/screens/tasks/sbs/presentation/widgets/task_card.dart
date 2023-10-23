part of '../tasks_sbs_screen.dart';

class _TaskCard extends StatelessWidget {
  final AppTaskSBS task;

  const _TaskCard({
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TlRefresh(
        onRefresh: context.bloc<TasksSBSCubit>().refresh,
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            _TaskCardProject(task: task),
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
      bottomNavigationBar: _TaskCardActions(task: task),
    );
  }
}
