// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/domain/entities/api_task_sbs_late/api_task_sbs_late.dart';
import 'package:terralinkapp/domain/entities/app_task_sbs_result_type.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/consts/consts.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/shimmers/task_app_bar_shimmer.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/shimmers/task_sbs_project_shimmer.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/widgets/task_sbs_project_actions.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/widgets/task_sbs_project_card.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/widgets/tasks_app_bar.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/widgets/tasks_list.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs_late/domain/cubits/tasks_sbs_late_cubit.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs_late/domain/states/tasks_sbs_late_cubit_state.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_slidable_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';

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
      child: BlocConsumer<TasksSbsLateCubit, TasksSbsLateCubitState>(
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
          loading: () => const Scaffold(
            appBar: TlAppBar(
              titleWidget: TaskAppBarShimmer(),
              backgroundColor: Colors.transparent,
            ),
            body: _ProjectCardShimmer(),
          ),
          ready: (data) => Scaffold(
            appBar: TlAppBar(
              titleWidget: TasksAppBar(
                hint: S.current.tasksSbsSearchHint,
                page: data.page,
                pages: data.tasks.length,
                search: data.search,
                onChanged: context.bloc<TasksSbsLateCubit>().search,
              ),
              backgroundColor: Colors.transparent,
            ),
            body: data.isLoading ? const _ProjectCardShimmer() : _Projects(data: data),
          ),
          error: (message, description) => Scaffold(
            appBar: const TlAppBar(backgroundColor: Colors.transparent),
            body: TlErrorData(
              message: message,
              description: description,
              onPressed: context.bloc<TasksSbsLateCubit>().refresh,
            ),
          ),
        ),
      ),
    );
  }
}

class _ProjectCardShimmer extends StatelessWidget {
  const _ProjectCardShimmer();

  @override
  Widget build(BuildContext context) {
    return const TaskSbsProjectShimmer(
      child: _TaskCardShimmer(),
    );
  }
}
