// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas.dart';
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_action.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/domain/states/tasks_cubit_state.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/shimmers/task_card_actions_shimmer.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/shimmers/task_card_content_block_shimmer.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/shimmers/tasks_screen_shimmer.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/task_bottom_actions_container.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/task_card_content_block.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/tasks_content_error.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/tasks_content_ready.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/tasks_content_ready_list.dart';
import 'package:terralinkapp/presentation/screens/tasks/eas/domain/cubits/tasks_eas_cubit.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/presentation/utils/common.dart';
import 'package:terralinkapp/presentation/utils/formatters.dart';
import 'package:terralinkapp/presentation/utils/validators.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/presentation/widgets/letter_avatar.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';

part 'consts.dart';
part 'shimmers/content_shimmer.dart';
part 'shimmers/task_card_content_shimmer.dart';
part 'widgets/task_card.dart';
part 'widgets/task_card_actions.dart';
part 'widgets/task_card_content.dart';
part 'widgets/tasks_list.dart';

class TasksEasScreen extends StatelessWidget {
  const TasksEasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TasksEasCubit>()..init(),
      child: BlocConsumer<TasksEasCubit, TasksCubitState<ApiTaskEas>>(
        listener: (context, state) {
          state.whenOrNull(ready: (data) {
            if (data.toastMessage?.isNotEmpty == true) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(data.toastMessage ?? S.current.somethingWasWrong)),
              );
              context.bloc<TasksEasCubit>().resetToastMessage();
            }
          });
        },
        builder: (context, state) => state.when(
          loading: () => const TasksScreenShimmer(body: _ContentShimmer()),
          ready: (data) => TasksContentReady(
            data: data,
            loader: const _ContentShimmer(),
            content: _TasksList(tasks: data.tasks, search: data.search),
            hint: S.current.tasksEasSearchHint,
            onSearch: context.bloc<TasksEasCubit>().search,
          ),
          error: (message) => TasksContentError(
            message: message,
            onPressed: context.bloc<TasksEasCubit>().refresh,
          ),
        ),
      ),
    );
  }
}
