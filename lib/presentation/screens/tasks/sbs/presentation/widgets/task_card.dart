part of '../tasks_sbs_screen.dart';

class _TaskCard extends StatelessWidget {
  final AppTaskSBS task;
  final Map<int, AppTaskSBSRecord> completedRecords;

  const _TaskCard({
    required this.task,
    required this.completedRecords,
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
            ...task.consultants
                .map((consultant) => _TaskCardConsultant(
                      projectId: task.projectId,
                      consultant: consultant,
                      completedRecords: completedRecords,
                    ))
                .toList(),
          ],
        ),
      ),
      // ToDo 57 передавать для исполнения не task, а completedRecords или массив на основе
      bottomNavigationBar: _TaskCardActions(task: task),
    );
  }
}
