part of '../tasks_eas_screen.dart';

class _ContentShow extends StatelessWidget {
  final List<AppTaskEAS> tasks;
  final int page;
  final String search;
  final bool isLoading;

  const _ContentShow({
    required this.isLoading,
    required this.page,
    required this.tasks,
    required this.search,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        height: tasks.isEmpty ? 0 : null,
        titleWidget: _buildSearchField(context, search),
        backgroundColor: Colors.transparent,
      ),
      body: isLoading
          ? tasks.isNotEmpty
              ? const _ContentShimmer()
              : const _ScreenShimmer()
          : _TasksList(tasks: tasks),
    );
  }

  Widget _buildSearchField(BuildContext context, String search) {
    return Padding(
      padding: TlSpaces.pv24,
      child: Row(
        children: [
          if (tasks.isNotEmpty)
            Text(
              '${page + 1}/${tasks.length}',
              style: appFontSemi(15, context.appTheme?.appTheme.second),
            ),
          Flexible(
            child: SearchField(
              padding: TlSpaces.ph24,
              hint: S.current.searchTasksHint,
              text: search,
              onChanged: context.bloc<TasksEASCubit>().search,
            ),
          ),
        ],
      ),
    );
  }
}
