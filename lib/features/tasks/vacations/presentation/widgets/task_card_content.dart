part of '../tasks_vacation_screen.dart';

class _TaskCardContent extends StatelessWidget {
  final ApiTaskVacation task;

  const _TaskCardContent({
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> blocks = [];

    for (final block in task.blocks) {
      final dataList = block.data;
      dataList.sort((a, b) => a.sort.compareTo(b.sort));

      for (var element in dataList) {
        if (element.value != null) {
          blocks.add(TaskCardContentBlock(
            title: element.title,
            value: element.value!,
            padding: TlSpaces.pb12,
          ));
        }
      }
    }

    return TlCard(
      margin: TlSpaces.pb12,
      child: Padding(
        padding: TlSpaces.ph20t20b8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: blocks,
        ),
      ),
    );
  }
}
