part of '../tasks_vacation_screen.dart';

class _TaskCard extends StatelessWidget {
  final ApiTaskVacation task;

  const _TaskCard({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TlRefresh(
        onRefresh: context.bloc<TasksVacationCubit>().refresh,
        child: ListView(
          padding: TlSpaces.ph24t12b24,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [_TaskCardContent(task: task)],
        ),
      ),
      bottomNavigationBar: _TaskCardActions(task: task),
    );
  }
}
