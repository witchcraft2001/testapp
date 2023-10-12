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
        padding: TlSpaces.ph24t12,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          TlCard(
            margin: TlSpaces.pb12,
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
          ..._build(),
        ],
      ),
    );
  }

  List<Widget> _build() {
    return task.consultantsWithRecords
        .map((record) => TlCard(
              margin: TlSpaces.pb12,
              child: Container(
                padding: TlSpaces.p20,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: TaskCardContentBlock(
                            title: S.current.tasksSBSEmployee,
                            value: record.name,
                          ),
                        ),
                        TaskCardContentBlock(
                          title: S.current.tasksSBSHours,
                          value: record.totalHours,
                          crossAxisAlignment: CrossAxisAlignment.end,
                        ),
                      ],
                    ),
                    const TlDivider(padding: TlSpaces.pt16),
                    ...record.registerRecords
                        .map(
                          (record) => Padding(
                            padding: TlSpaces.pv8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TaskCardContentBlock(
                                  title: 'Дата',
                                  value: record.reportDate.toDateString(),
                                  padding: TlSpaces.pb12,
                                ),
                                TaskCardContentBlock(
                                  title: 'Описание',
                                  value: record.details,
                                  padding: TlSpaces.pb12,
                                ),
                                TaskCardContentBlock(
                                  title: S.current.tasksSBSHours,
                                  value: record.hours,
                                ),
                                const TlDivider(padding: TlSpaces.pt8),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ],
                ),
              ),
            ))
        .toList();
  }
}
