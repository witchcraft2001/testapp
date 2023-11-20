// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_consultant.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_weekly/api_task_sbs_weekly_record.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/domain/states/tasks_cubit_state.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/domain/states/tasks_state_ready_data.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/consts/consts.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/shimmers/task_sbs_project_shimmer.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/shimmers/tasks_screen_shimmer.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/task_sbs_project_actions.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/task_sbs_project_card.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/tasks_content_error.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/tasks_content_ready.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/tasks_content_ready_list.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs_weekly/domain/cubits/tasks_sbs_weekly_cubit.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/utils/validators.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_slidable_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/presentation/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';
import 'package:terralinkapp/presentation/widgets/tl_tag.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';

part 'dialogs/consultant_reject_dialog.dart';
part 'dialogs/record_reject_dialog.dart';
part 'shimmers/content_shimmer.dart';
part 'shimmers/task_card_consultant_shimmer.dart';
part 'widgets/project.dart';
part 'widgets/task_card_consultant.dart';
part 'widgets/task_card_consultant_record.dart';
part 'widgets/projects.dart';

class TasksSbsWeeklyScreen extends StatelessWidget {
  const TasksSbsWeeklyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TasksSbsWeeklyCubit>()..init(),
      child: BlocConsumer<TasksSbsWeeklyCubit, TasksCubitState<ApiTaskSbsWeekly>>(
        listener: (context, state) {
          state.whenOrNull(ready: (data) {
            if (data.toastMessage?.isNotEmpty == true) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(data.toastMessage ?? S.current.somethingWasWrong)),
              );

              context.bloc<TasksSbsWeeklyCubit>().resetToastMessage();
            }
          });
        },
        builder: (context, state) => state.when(
          loading: () => const TasksScreenShimmer(body: _ContentShimmer()),
          ready: (data) => TasksContentReady(
            data: data,
            loader: const _ContentShimmer(),
            content: _Projects(data: data),
            hint: S.current.tasksSbsSearchHint,
            onSearch: context.bloc<TasksSbsWeeklyCubit>().search,
          ),
          error: (message) => TasksContentError(
            message: message,
            onPressed: context.bloc<TasksSbsWeeklyCubit>().refresh,
          ),
        ),
      ),
    );
  }
}
