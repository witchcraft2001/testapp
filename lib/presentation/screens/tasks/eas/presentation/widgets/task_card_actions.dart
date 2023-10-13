part of '../tasks_eas_screen.dart';

class _TaskCardActions extends StatefulWidget {
  final AppTaskEAS task;

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
    return Container(
      decoration: BoxDecoration(
        borderRadius: TlDecoration.brTasksActions,
        color: context.appTheme?.appTheme.backgroundPopupWidget,
      ),
      padding: TlSpaces.ph24v16,
      child: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TlTextField(
                label: S.current.decisionComment,
                text: decision,
                onChanged: (value) => setState(() => decision = value),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return S.current.fieldRequiredComment;
                  }

                  return null;
                },
              ),
              _buildButtonsRow(context),
            ],
          ),
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

  void _handleCompleteAction(AppTaskEASAction action) {
    final id = action.id.toLowerCase();

    if (id == _TaskData.actionApprove) {
      context.bloc<TasksEASCubit>().completeTask(widget.task, action, decision);

      return;
    }

    if (_formKey.currentState?.validate() == true) {
      context.bloc<TasksEASCubit>().completeTask(widget.task, action, decision);
    }
  }
}
