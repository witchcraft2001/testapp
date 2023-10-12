part of '../tasks_eas_screen.dart';

class _TaskCard extends StatelessWidget {
  final Task task;

  const _TaskCard({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TlRefresh(
        onRefresh: context.bloc<TasksEASCubit>().refresh,
        child: SingleChildScrollView(
          padding: TlSpaces.ph24v12,
          physics: const AlwaysScrollableScrollPhysics(),
          child: _TaskCardContent(task: task),
        ),
      ),
      bottomNavigationBar: _TaskCardActions(task: task),
    );
  }
}
