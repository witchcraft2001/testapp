// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs/api_task_sbs_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_consultant_record/api_task_sbs_consultant_record_dao.dart';
import 'package:terralinkapp/data/models/responses/api_task_sbs_register_record/api_task_sbs_register_record_dao.dart';
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
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/buttons/tl_button.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_error_data.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_refresh.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';
import 'package:terralinkapp/presentation/widgets/tl_tag.dart';

part 'widgets/task_card.dart';
part 'widgets/task_card_actions.dart';
part 'widgets/task_card_project.dart';
part 'widgets/task_card_employee.dart';
part 'widgets/task_card_employee_record.dart';
part 'widgets/tasks_list.dart';

class TasksSBSScreen extends StatelessWidget {
  const TasksSBSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TasksSBSCubit>()..init(),
      child: BlocBuilder<TasksSBSCubit, TasksSBSCubitState>(
        builder: (_, state) => state.when(
          loading: () => const Scaffold(body: CenteredProgressIndicator()),
          ready: (data) => Scaffold(
            appBar: TlAppBar(title: S.current.tasksSBS),
            body: _TasksList(tasks: data.tasks),
          ),
          error: (message) => Scaffold(
            appBar: TlAppBar(title: S.current.tasksSBS),
            body: TlErrorData(message: message),
          ),
        ),
      ),
    );
  }
}
