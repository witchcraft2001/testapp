// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';

class TaskCardContentBlockShimmer extends StatelessWidget {
  const TaskCardContentBlockShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TlShimmerContent(
          margin: TlSpaces.pb4,
          height: TlSizes.shimmerTextBase,
          width: TlSizes.shimmerTaskEasLabelWidth,
        ),
        TlShimmerContent(
          height: TlSizes.shimmerTextM,
          margin: TlSpaces.pb12,
        ),
      ],
    );
  }
}
