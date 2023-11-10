// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/tasks/common/shimmers/task_sbs_project_actions_shimmer.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/shimmers/task_sbs_project_card_shimmer.dart';

class TaskSbsProjectShimmer extends StatelessWidget {
  final Widget child;

  const TaskSbsProjectShimmer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const TaskSbsProjectCardShimmer(),
          ...List.generate(5, (_) => child),
        ],
      ),
      bottomNavigationBar: const TaskSbsProjectActionsShimmer(),
    );
  }
}
