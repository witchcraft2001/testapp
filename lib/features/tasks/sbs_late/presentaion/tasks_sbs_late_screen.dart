// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/theme/data/app_style.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/core/ui/widgets/buttons/tl_slidable_button.dart';
import 'package:terralinkapp/core/ui/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/core/ui/widgets/tl_card.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/features/tasks/common/domain/states/tasks_cubit_state.dart';
import 'package:terralinkapp/features/tasks/common/domain/states/tasks_state_ready_data.dart';
import 'package:terralinkapp/features/tasks/common/presentation/consts/consts.dart';
import 'package:terralinkapp/features/tasks/common/presentation/shimmers/task_sbs_project_shimmer.dart';
import 'package:terralinkapp/features/tasks/common/presentation/shimmers/tasks_screen_shimmer.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/task_sbs_project_actions.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/task_sbs_project_card.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/tasks_content_error.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/tasks_content_ready.dart';
import 'package:terralinkapp/features/tasks/common/presentation/widgets/tasks_content_ready_list.dart';
import 'package:terralinkapp/features/tasks/sbs/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/cubits/tasks_sbs_late_cubit.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/api_task_sbs_late.dart';
import 'package:terralinkapp/features/tasks/sbs_late/domain/entities/app_project_sbs_late.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';

part 'shimmers/content_shimmer.dart';
part 'shimmers/task_card_shimmer.dart';
part 'widgets/task_card.dart';
part 'widgets/project.dart';
part 'widgets/projects.dart';

class TasksSbsLateScreen extends StatelessWidget {
  const TasksSbsLateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TasksSbsLateCubit>()..init(),
      child: BlocConsumer<TasksSbsLateCubit, TasksCubitState<AppProjectSbsLate>>(
        listener: (context, state) {
          state.whenOrNull(ready: (data) {
            if (data.toastMessage?.isNotEmpty == true) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(data.toastMessage ?? S.current.somethingWasWrong)),
              );

              context.bloc<TasksSbsLateCubit>().resetToastMessage();
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
            onSearch: context.bloc<TasksSbsLateCubit>().search,
          ),
          error: (message) => TasksContentError(
            message: message,
            onPressed: context.bloc<TasksSbsLateCubit>().refresh,
          ),
        ),
      ),
    );
  }
}
