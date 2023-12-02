part of '../tasks_eas_screen.dart';

class _TaskCard extends StatelessWidget {
  final ApiTaskEas task;

  const _TaskCard({
    super.key,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    ApiTaskEasBlockData? dataAttachments;

    // ToDo 190 добавить разделение на блоки данных из _TaskCardContent
    for (final block in task.blocks) {
      for (final data in block.data) {
        if (data.id.toLowerCase() == _TaskData.idAttachments) dataAttachments = data;
      }
    }

    return Scaffold(
      body: TlRefresh(
        onRefresh: context.bloc<TasksEasCubit>().refresh,
        child: ListView(
          padding: TlSpaces.ph24t12b24,
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            _TaskCardContent(task: task),
            if (dataAttachments != null)
              _TaskCardAttachments(taskId: task.id, data: dataAttachments),
          ],
        ),
      ),
      bottomNavigationBar: _TaskCardActions(task: task),
    );
  }
}
