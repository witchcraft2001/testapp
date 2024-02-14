// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer.dart';
import 'package:terralinkapp/core/ui/shimmers/tl_shimmer_content.dart';

class UserTileShimmer extends StatelessWidget {
  const UserTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return TlShimmer(
      child: ListTile(
        contentPadding: TlSpaces.ph24,
        shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
        leading: TlShimmerContent(
          borderRadius: TlDecoration.brAvatarLetter,
          width: TlSizes.avatarS,
          height: TlSizes.avatarS,
        ),
        title: Row(
          children: [
            TlShimmerContent(
              width:
                  TlSizes.shimmerEmployeeName + TlSizes.shimmerEmployeeName * Random().nextInt(2),
              height: TlSizes.shimmerTextBase,
            ),
          ],
        ),
        subtitle: Row(
          children: [
            TlShimmerContent(
              width: TlSizes.shimmerEmployeePosition +
                  TlSizes.shimmerEmployeePosition * Random().nextInt(2),
              height: TlSizes.shimmerTextBase,
            ),
          ],
        ),
      ),
    );
  }
}
