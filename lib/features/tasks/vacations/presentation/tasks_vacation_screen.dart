// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/states/common_state.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_textfield.dart';
import 'package:terralinkapp/core/utils/buttons.dart';
import 'package:terralinkapp/core/utils/snacbar.dart';
import 'package:terralinkapp/core/utils/validators.dart';
import 'package:terralinkapp/features/tasks/common/presentation/entities/tasks_state_ready_data.dart';
import 'package:terralinkapp/features/tasks/common/presentation/shimmers/task_card_actions_shimmer.dart';
import 'package:terralinkapp/features/tasks/common/presentation/shimmers/task_card_content_block_shimmer.dart';
import 'package:terralinkapp/features/tasks/common/presentation/shimmers/tasks_screen_shimmer.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/task_bottom_actions_container.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/task_card_content_block.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/tasks_content_error.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/tasks_content_ready.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/tasks_content_ready_list.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation.dart';
import 'package:terralinkapp/features/tasks/vacations/domain/entities/api_task_vacation_action.dart';
import 'package:terralinkapp/features/tasks/vacations/presentation/cubits/tasks_vacation_cubit.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'consts.dart';
part 'shimmers/content_shimmer.dart';
part 'shimmers/task_card_content_shimmer.dart';
part 'widgets/task_card.dart';
part 'widgets/task_card_actions.dart';
part 'widgets/task_card_content.dart';
part 'widgets/tasks_list.dart';

class TasksVacationScreen extends StatelessWidget {
  const TasksVacationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme;

    return BlocProvider(
      create: (_) => getIt<TasksVacationCubit>()..init(),
      child: BlocConsumer<TasksVacationCubit, CommonState<TasksStateReadyData<ApiTaskVacation>>>(
        listener: (context, state) {
          state.whenOrNull(ready: (data) {
            if (data.toastMessage?.isNotEmpty == true) {
              ScaffoldMessenger.of(context).showSnackBar(
                buildSnackBar(
                  theme: theme,
                  data: TlSnackBarData(
                    message: data.toastMessage ?? S.current.exceptionSomethingWasWrong,
                  ),
                ),
              );

              context.bloc<TasksVacationCubit>().resetToastMessage();
            }
          });
        },
        builder: (context, state) => state.when(
          init: () => const TasksScreenShimmer(body: _ContentShimmer()),
          ready: (data) => TasksContentReady(
            data: data,
            loader: const _ContentShimmer(),
            content: _TasksList(tasks: data.tasks, search: data.search),
            hint: S.current.tasksVacationSearch,
            onSearch: context.bloc<TasksVacationCubit>().search,
          ),
          error: (message, type) => TasksContentError(
            message: message,
            type: type,
            onPressed: context.bloc<TasksVacationCubit>().refresh,
          ),
        ),
      ),
    );
  }
}
