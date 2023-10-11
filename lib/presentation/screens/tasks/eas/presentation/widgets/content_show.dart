part of '../tasks_screen.dart';

class _ContentShow extends StatelessWidget {
  final List<Task> tasks;
  final int page;
  final String search;
  final bool isLoading;

  const _ContentShow({
    required this.isLoading,
    required this.tasks,
    required this.page,
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
      body: Column(
        children: [
          Expanded(
            child: isLoading
                ? tasks.isNotEmpty
                    ? const _ContentShimmer()
                    : const _ScreenShimmer()
                : _TasksList(tasks: tasks),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchField(BuildContext context, String search) {
    return Padding(
      padding: TlSpaces.pv24,
      child: Row(
        children: [
          if (tasks.isNotEmpty) _buildCount(context, tasks.length),
          Flexible(
            child: SearchField(
              padding: TlSpaces.pr24,
              hint: S.current.searchTasksHint,
              text: search,
              onChanged: context.bloc<TasksCubit>().onSearchChanged,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCount(BuildContext context, int count) {
    return Container(
      padding: TlSpaces.pr8,
      child: Text(
        '${page + 1}/$count',
        style: appFontSemi(15, context.appTheme?.appTheme.second),
      ),
    );
  }
}
