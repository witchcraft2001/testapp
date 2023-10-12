part of '../tasks_sbs_screen.dart';

class _TaskCard extends StatelessWidget {
  final ApiTaskSBSDao task;

  const _TaskCard({
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return TlRefresh(
      onRefresh: context.bloc<TasksSBSCubit>().refresh,
      child: ListView(
        padding: TlSpaces.ph24v12,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          TlCard(
            child: Padding(
              padding: TlSpaces.p24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TaskCardContentBlock(
                    title: S.current.tasksSBSCompany,
                    value: task.company,
                    padding: TlSpaces.pb16,
                  ),
                  TaskCardContentBlock(
                    title: S.current.tasksSBSProject,
                    value: '${task.projectSbsId} / ${task.projectName}',
                    padding: TlSpaces.pb16,
                  ),
                  TaskCardContentBlock(
                    title: S.current.tasksSBSAM,
                    value: task.amName,
                    padding: TlSpaces.pb16,
                  ),
                  TaskCardContentBlock(title: S.current.tasksSBSPM, value: task.pmName),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
