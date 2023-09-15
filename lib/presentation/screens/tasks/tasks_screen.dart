// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/domain/task.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/task_widget.dart';
import 'package:terralinkapp/presentation/screens/tasks/tasks_state.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/app_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import 'package:terralinkapp/presentation/widgets/search_field.dart';
import 'tasks_cubit.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen({super.key});

  final RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TasksCubit>()..onInit(),
      child: _getScreen(context),
    );
  }

  Widget _getScreen(BuildContext context) {
    return BlocConsumer<TasksCubit, TasksState>(
      listener: (context, state) {
        if (state is ShowState && state.toastMessage?.isNotEmpty == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.toastMessage ?? S.current.somethingWasWrong)),
          );
          context.bloc<TasksCubit>().resetToastMessage();
        }
      },
      builder: (context, state) {
        return _getScreenByState(context, state);
      },
    );
  }

  Widget _getScreenByState(BuildContext context, TasksState state) {
    return switch (state) {
      InitState() => const CenteredProgressIndicator(),
      LoadingState() => const CenteredProgressIndicator(),
      LoadingErrorState(message: var message) => ErrorMessage(
          message: message,
          button: AppButton(
            title: S.current.btnRetry,
            onPressed: context.bloc<TasksCubit>().onInit,
          ),
        ),
      ShowState(
        tasks: var list,
        pageNumber: var pageNumber,
        search: var search,
        isLoading: var isLoading
      ) =>
        _getListState(context, list, pageNumber, search, isLoading),
    };
  }

  Widget _getListState(
    BuildContext context,
    List<Task> list,
    int pageNumber,
    String search,
    bool isLoading,
  ) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: _getSearchField(context, search),
        backgroundColor: Colors.transparent,
        actions: [_buildCount(context, pageNumber, list.length)],
      ),
      body: Column(
        children: [
          Expanded(
            child: isLoading ? const CenteredProgressIndicator() : _getItems(context, list),
          ),
        ],
      ),
    );
  }

  Widget _getItems(BuildContext context, List<Task> list) {
    return list.isEmpty
        ? SmartRefresher(
            controller: _refreshController,
            enablePullDown: true,
            onRefresh: context.bloc<TasksCubit>().onRefresh,
            child: Center(
              child: Text(
                S.current.tasksEmptyList,
                style:
                    ThemeProvider.titleLarge.copyWith(color: context.appTheme?.appTheme.textMain),
              ),
            ),
          )
        : PageView(
            onPageChanged: context.bloc<TasksCubit>().onPageChanged,
            children: list
                .map(
                  (e) => SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TaskWidget(
                      key: Key(e.id.toString()),
                      task: e,
                      onSetResult: context.bloc<TasksCubit>().onSetTaskResult,
                      onRefresh: context.bloc<TasksCubit>().onRefresh,
                    ),
                  ),
                )
                .toList(),
          );
  }

  Widget _getSearchField(BuildContext context, String search) {
    return SearchField(
      padding: TlSpaces.p24,
      hint: S.current.searchTasksHint,
      text: search,
      onChanged: context.bloc<TasksCubit>().onSearchChanged,
    );
  }

  Widget _buildCount(BuildContext context, int pageNumber, int pageCount) {
    return Container(
      padding: TlSpaces.pr24,
      alignment: Alignment.center,
      child: pageCount > 0
          ? Text(
              S.current.counter(pageNumber + 1, pageCount),
              textAlign: TextAlign.end,
              style: ThemeProvider.bodyMedium.copyWith(color: context.appTheme?.appTheme.textMain),
            )
          : Container(),
    );
  }
}
