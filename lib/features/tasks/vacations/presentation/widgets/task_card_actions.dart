part of '../tasks_vacation_screen.dart';

class _TaskCardActions extends StatefulWidget {
  final ApiTaskVacation task;

  const _TaskCardActions({
    required this.task,
  });

  @override
  State<_TaskCardActions> createState() => _TaskCardActionsState();
}

class _TaskCardActionsState extends State<_TaskCardActions> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String decision = '';

  @override
  Widget build(BuildContext context) {
    return TaskBottomActionsContainer(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TlTextField(
              label: S.current.tasksDecisionComment,
              text: decision,
              onChanged: (value) => setState(() => decision = value),
              validator: validateRequiredTextField,
            ),
            _buildButtonsRow(context),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonsRow(BuildContext context) {
    final actions = widget.task.actions;
    final length = actions.length - 1;

    return Padding(
      padding: TlSpaces.pt16,
      child: Row(
        children: actions.map((action) {
          final index = actions.indexOf(action);
          final isFirst = index == 0;
          final isLast = index == length;

          final id = action.id.toLowerCase();
          final padding = isFirst
              ? TlSpaces.pr8
              : isLast
                  ? TlSpaces.pl8
                  : TlSpaces.ph8;

          return Flexible(
            child: TlButton(
              padding: padding,
              title: _translations[id] ?? action.title,
              type: id == _TaskData.actionApprove ? AppBtnType.success : AppBtnType.primary,
              onPressed: () => _handleCompleteAction(action),
              withOverflow: true,
            ),
          );
        }).toList(),
      ),
    );
  }

  void _handleCompleteAction(ApiTaskVacationAction action) {
    final id = action.id.toLowerCase();

    if (id == _TaskData.actionApprove) {
      context.bloc<TasksVacationCubit>().completeTask(widget.task, action, decision);

      return;
    }

    if (_formKey.currentState?.validate() == true) {
      context.bloc<TasksVacationCubit>().completeTask(widget.task, action, decision);
    }
  }
}
