part of '../tasks_sbs_screen.dart';

class _TaskCard extends StatelessWidget {
  final ApiTaskSBSDao task;

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
            ...task.consultantsWithRecords
                .map((record) => _TaskCardEmployee(record: record))
                .toList(),
          ],
        ),
      ),
      bottomNavigationBar: _TaskCardActions(task: task),
    );
  }
}
