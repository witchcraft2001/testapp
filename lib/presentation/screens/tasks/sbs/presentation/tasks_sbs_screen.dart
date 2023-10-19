// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_consultant.dart';
import 'package:terralinkapp/domain/models/app_task_sbs/app_task_sbs_record.dart';
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/widgets/task_card_content_block.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/widgets/tasks_list.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs/domain/cubits/tasks_sbs_cubit.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs/domain/states/tasks_sbs_cubit_state.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/utils/validators.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_slidable_button.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/presentation/widgets/dialogs/tl_dialog_confirm.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';
import 'package:terralinkapp/presentation/widgets/tl_tag.dart';
import 'package:terralinkapp/presentation/widgets/tl_textfield.dart';

part 'consts.dart';
part 'dialogs/consultant_reject_dialog.dart';
part 'dialogs/record_reject_dialog.dart';
part 'shimmers/task_card_actions_shimmer.dart';
part 'shimmers/task_card_consultant_shimmer.dart';
part 'shimmers/task_card_project_shimmer.dart';
part 'shimmers/task_card_shimmer.dart';
part 'widgets/task_card.dart';
part 'widgets/task_card_actions.dart';
part 'widgets/task_card_project.dart';
part 'widgets/task_card_consultant.dart';
part 'widgets/task_card_consultant_record.dart';
part 'widgets/tasks_list.dart';

class TasksSBSScreen extends StatelessWidget {
  const TasksSBSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TasksSBSCubit>()..init(),
      child: BlocBuilder<TasksSBSCubit, TasksSBSCubitState>(
        builder: (_, state) => state.when(
          loading: () => Scaffold(
            appBar: TlAppBar(title: S.current.tasksSBS),
            body: const _TaskCardShimmer(),
          ),
          ready: (data) => Scaffold(
            appBar: TlAppBar(title: S.current.tasksSBS),
            body: _TasksList(data: data),
          ),
          error: (message) => Scaffold(
            appBar: TlAppBar(title: S.current.tasksSBS),
            body: TlErrorData(
              message: message,
              onPressed: context.bloc<TasksSBSCubit>().refresh,
            ),
          ),
        ),
      ),
    );
  }
}
