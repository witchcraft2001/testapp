// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/domain/task.dart';
import 'package:terralinkapp/domain/task_action.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/domain/states/tasks_state.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/utils/common.dart';
import 'package:terralinkapp/presentation/utils/formatters.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_empty_data.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/presentation/widgets/error_message.dart';
import 'package:terralinkapp/presentation/widgets/letter_avatar.dart';
import 'package:terralinkapp/presentation/widgets/search_field.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';
import '../domain/cubits/tasks_cubit.dart';

part 'consts.dart';
part 'shimmers/content_shimmer.dart';
part 'shimmers/screen_shimmer.dart';
part 'shimmers/task_card_actions_shimmer.dart';
part 'shimmers/task_card_content_shimmer.dart';
part 'widgets/content_show.dart';
part 'widgets/task_card.dart';
part 'widgets/task_card_actions.dart';
part 'widgets/task_card_content.dart';
part 'widgets/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TasksCubit>()..onInit(),
      child: _buildScreen(context),
    );
  }

  Widget _buildScreen(BuildContext context) {
    return BlocConsumer<TasksCubit, TasksState>(
      listener: (context, state) {
        if (state is ShowState && state.toastMessage?.isNotEmpty == true) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.toastMessage ?? S.current.somethingWasWrong)),
          );
          context.bloc<TasksCubit>().resetToastMessage();
        }
      },
      builder: (context, state) => switch (state) {
        InitState() => const _ScreenShimmer(),
        LoadingState() => const _ScreenShimmer(),
        LoadingErrorState(message: var message) => ErrorMessage(
            message: message,
            button: TlButton(
              title: S.current.btnRetry,
              onPressed: context.bloc<TasksCubit>().onInit,
            ),
          ),
        ShowState(
          tasks: var tasks,
          pageNumber: var page,
          search: var search,
          isLoading: var isLoading
        ) =>
          _ContentShow(tasks: tasks, page: page, search: search, isLoading: isLoading),
      },
    );
  }
}
