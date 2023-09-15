// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/theme/app_colors.dart';

class LineWidget extends StatelessWidget {
  final double progress;

  const LineWidget({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2.0,
      child: Stack(
        children: [_getBackground(), _getForeground()],
      ),
    );
  }

  Widget _getBackground() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(2.0)),
        color: AppColors.whiteOnColor.withOpacity(0.3),
      ),
    );
  }

  Widget _getForeground() {
    if (progress > 0) {
      return Container(
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(2.0)), color: AppColors.whiteOnColor),
      );
    }

    return Container();
  }
}
