// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';

class TaskAppBarShimmer extends StatelessWidget {
  const TaskAppBarShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return TlShimmer(
      child: Row(
        children: [
          const TlShimmerContent(
            height: TlSizes.shimmerTextM,
            width: TlSizes.shimmerTasksCountWidth,
          ),
          Flexible(
            child: TlShimmerContent(
              margin: TlSpaces.ph24,
              borderRadius: TlDecoration.brSearchField,
              height: TlSizes.shimmerField,
            ),
          ),
        ],
      ),
    );
  }
}
