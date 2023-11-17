// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_decorations.dart';
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/presentation/shimmers/tl_shimmer_content.dart';
import 'package:terralinkapp/presentation/widgets/tl_card.dart';

class TaskSbsProjectCardShimmer extends StatelessWidget {
  const TaskSbsProjectCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: TlSpaces.ph24t12b24,
      child: TlShimmer(
        child: Padding(
          padding: TlSpaces.p24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: TlSpaces.pb16,
                child: TlShimmerContent(
                  height: TlSizes.shimmerTaskSbsProjectHeight,
                ),
              ),
              TlShimmerContent(
                borderRadius: TlDecoration.brTagBase,
                height: TlSizes.shimmerTextBase,
                width: TlSizes.shimmerTaskSbsProjectAboutWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
