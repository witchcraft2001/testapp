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
      padding: TlSpaces.p24,
      child: Row(
        children: [
          Flexible(
            child: SearchField(
              padding: EdgeInsets.zero,
              hint: S.current.searchTasksHint,
              text: search,
              onChanged: context.bloc<TasksCubit>().onSearchChanged,
            ),
          ),
          _buildCount(context, tasks.length),
        ],
      ),
    );
  }

  Widget _buildCount(BuildContext context, int count) {
    return Container(
      padding: TlSpaces.pl8,
      width: TlSizes.tasksCountWidth,
      child: count > 0
          ? Text(
              S.current.counter(page + 1, count),
              textAlign: TextAlign.end,
              style: appFontMedium(15, context.appTheme?.appTheme.textMain),
            )
          : null,
    );
  }
}
