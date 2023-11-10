part of '../tasks_eas_screen.dart';

class _TaskCard extends StatelessWidget {
  final ApiTaskEas task;

  const _TaskCard({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TlRefresh(
        onRefresh: context.bloc<TasksEasCubit>().refresh,
        child: SingleChildScrollView(
          padding: TlSpaces.ph24t12b24,
          physics: const AlwaysScrollableScrollPhysics(),
          child: _TaskCardContent(task: task),
        ),
      ),
      bottomNavigationBar: _TaskCardActions(task: task),
    );
  }
}
