// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/shimmers/task_app_bar_shimmer.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';

class TasksScreenShimmer extends StatelessWidget {
  final Widget body;

  const TasksScreenShimmer({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TlAppBar(
        titleWidget: TaskAppBarShimmer(),
        backgroundColor: Colors.transparent,
      ),
      body: body,
    );
  }
}
