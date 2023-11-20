// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/screens/tasks/common/presentation/widgets/task_bottom_actions_container.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';

class TaskCardActionsShimmer extends StatelessWidget {
  const TaskCardActionsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const TaskBottomActionsContainer(
      child: TlShimmer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TlShimmerContent(
              margin: TlSpaces.pb8,
              height: TlSizes.shimmerTextBase,
              width: TlSizes.shimmerTaskEasCommentWidth,
            ),
            TlShimmerContent(
              margin: TlSpaces.pb16,
              height: TlSizes.shimmerField,
            ),
            Row(
              children: [
                Flexible(
                  child: TlShimmerContent(height: TlSizes.btnBaseSize),
                ),
                SizedBox(width: TlSpaces.sp16),
                Flexible(
                  child: TlShimmerContent(height: TlSizes.btnBaseSize),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
