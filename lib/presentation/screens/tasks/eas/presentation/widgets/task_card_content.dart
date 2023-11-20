part of '../tasks_eas_screen.dart';

class _TaskCardContent extends StatelessWidget {
  final ApiTaskEas task;

  const _TaskCardContent({
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> blocks = [];
    final exclude = List.of([
      _TaskData.personPayer,
      _TaskData.personInitiator,
      // ToDo решено скрыть, пока не будет определено, как именно будет происходить обработка файлов
      _TaskData.idAttachments,
    ]);

    for (final block in task.blocks) {
      final dataList =
          block.data.where((element) => !exclude.contains(element.id.toLowerCase())).toList();
      dataList.sort((a, b) => a.sort.compareTo(b.sort));

      for (var element in dataList) {
        if (element.value.isNotEmpty) {
          String value = element.value.first.name;
          final id = element.id.toLowerCase();

          // ToDo временно. ждем решения по тому, на чьей стороне все же будет форматирование
          if (_TaskData.idsToFormatting.contains(id)) {
            value = formatPriceToGoodLook(value);
          }

          blocks.add(TaskCardContentBlock(
            title: element.title,
            value: value,
            isPrimary: id == _TaskData.idBudget,
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
          children: [
            _TaskCardContentTitle(task: task),
            ...blocks,
          ],
        ),
      ),
    );
  }
}

class _TaskCardContentTitle extends StatelessWidget {
  final ApiTaskEas task;

  const _TaskCardContentTitle({
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    final payer = task.blocks.firstOrNull?.data
        .firstWhere((element) => element.id.toLowerCase() == _TaskData.personPayer);

    final initiator = task.blocks.firstOrNull?.data
        .firstWhere((element) => element.id.toLowerCase() == _TaskData.personInitiator);

    final isPayer = payer != null;
    final isInitiator = initiator != null;

    final payerInitials = isPayer ? getInitials(payer.value.first.name) : null;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (payerInitials != null)
          Padding(padding: TlSpaces.pr20, child: LetterAvatar(payerInitials)),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isPayer) TaskCardContentBlock(title: payer.title, value: payer.value.first.name),
              if (isPayer || isInitiator) const SizedBox(height: TlSpaces.sp12),
              if (isInitiator)
                TaskCardContentBlock(title: initiator.title, value: initiator.value.first.name),
            ],
          ),
        ),
      ],
    );
  }
}
