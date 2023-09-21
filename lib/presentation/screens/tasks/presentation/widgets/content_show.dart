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
        titleWidget: _buildSearchField(context, search),
        backgroundColor: Colors.transparent,
        actions: [_buildCount(context, tasks.length)],
      ),
      body: Column(
        children: [
          Expanded(
            child: isLoading ? const CenteredProgressIndicator() : _TasksList(tasks: tasks),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchField(BuildContext context, String search) {
    return SearchField(
      padding: TlSpaces.p24,
      hint: S.current.searchTasksHint,
      text: search,
      onChanged: context.bloc<TasksCubit>().onSearchChanged,
    );
  }

  Widget _buildCount(BuildContext context, int pageCount) {
    return Container(
      padding: TlSpaces.pr24,
      alignment: Alignment.center,
      child: pageCount > 0
          ? Text(
              S.current.counter(page + 1, pageCount),
              textAlign: TextAlign.end,
              style: ThemeProvider.bodyMedium.copyWith(color: context.appTheme?.appTheme.textMain),
            )
          : Container(),
    );
  }
}
