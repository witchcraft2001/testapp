part of '../tasks_screen.dart';

class _TaskCardContent extends StatelessWidget {
  final Task task;

  const _TaskCardContent({
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> blocks = [];
    final exclude = List.of([_TaskData.personPayer, _TaskData.personInitiator]);

    for (final block in task.blocks) {
      final dataList =
          block.data.where((element) => !exclude.contains(element.id.toLowerCase())).toList();
      dataList.sort((a, b) => a.sort.compareTo(b.sort));

      for (var element in dataList) {
        String value = element.value;
        final id = element.id.toLowerCase();

        // ToDo временно. ждем решения по тому, на чьей стороне все же будет форматирование
        if (_TaskData.idsToFormatting.contains(id)) {
          value = formatPriceToGoodLook(element.value);
        }

        blocks.add(_TaskCardContentBlock(
          title: element.title,
          value: value,
          isPrimary: id == _TaskData.idBudget,
        ));
        blocks.add(const SizedBox(height: TlSpaces.sp12));
      }
    }

    return Padding(
      padding: TlSpaces.ph20t20b8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TaskCardContentTitle(task: task),
          ...blocks,
        ],
      ),
    );
  }
}

class _TaskCardContentTitle extends StatelessWidget {
  final Task task;

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

    final payerInitials = isPayer ? getInitials(payer.value) : null;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (payerInitials != null)
          Padding(padding: TlSpaces.pr20, child: LetterAvatar(payerInitials)),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isPayer) _TaskCardContentBlock(title: payer.title, value: payer.value),
            if (isPayer || isInitiator) const SizedBox(height: TlSpaces.sp12),
            if (isInitiator) _TaskCardContentBlock(title: initiator.title, value: initiator.value),
          ],
        ),
      ],
    );
  }
}

class _TaskCardContentBlock extends StatelessWidget {
  final String title;
  final String value;
  final bool isPrimary;

  const _TaskCardContentBlock({
    required this.title,
    required this.value,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: ThemeProvider.labelMedium.copyWith(
            color: context.appTheme?.appTheme.textSignatures,
          ),
        ),
        Text(
          value,
          style: ThemeProvider.bodyMedium.copyWith(
            color: isPrimary
                ? context.appTheme?.appTheme.primary
                : context.appTheme?.appTheme.textMain,
          ),
        ),
      ],
    );
  }
}
