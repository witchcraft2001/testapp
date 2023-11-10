// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/widgets/task_bottom_actions_container.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';

class TaskSbsProjectActionsShimmer extends StatelessWidget {
  const TaskSbsProjectActionsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return TaskBottomActionsContainer(
      child: SafeArea(
        child: TlShimmer(
          child: TlShimmerContent(
            borderRadius: TlDecoration.brBtnBase,
            height: TlSizes.btnBaseSize,
          ),
        ),
      ),
    );
  }
}
