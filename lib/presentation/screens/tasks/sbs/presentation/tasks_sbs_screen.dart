// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs/domain/cubits/tasks_sbs_cubit.dart';
import 'package:terralinkapp/presentation/screens/tasks/sbs/domain/states/tasks_sbs_cubit_state.dart';
import 'package:terralinkapp/presentation/widgets/centered_progress_indicator.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_error_data.dart';

class TasksSBSScreen extends StatelessWidget {
  const TasksSBSScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TasksSBSCubit>()..init(),
      child: BlocBuilder<TasksSBSCubit, TasksSBSCubitState>(
        builder: (context, state) => state.when(
          loading: () => const Scaffold(body: CenteredProgressIndicator()),
          ready: (data) => Scaffold(
            appBar: TlAppBar(title: S.current.tasksSBS),
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: TlSpaces.p24,
                    child: Text(
                      'Всего задач: ${data.tasks.length}',
                    ),
                  ),
                ],
              ),
            ),
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
