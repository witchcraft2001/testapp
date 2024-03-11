// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/widgets/tl_spacer.dart';

class TlPageIndicator extends StatelessWidget {
  const TlPageIndicator({
    super.key,
    required this.count,
    required this.index,
    this.color,
    this.onTap,
  });

  final int count;
  final int index;
  final Color? color;
  final void Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _getLines(context),
    );
  }

  List<Widget> _getLines(BuildContext context) {
    final colors = context.appTheme?.colors;

    return [
      for (var i = 0; i < count; i++) ...[
        if (i > 0)
          const TlSpacer(
            width: 8,
          ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              onTap?.call(i);
            },
            child: Container(
              color: Colors.transparent,
              height: TlSizes.btnIconSize,
              child: Center(
                child: ClipRRect(
                  borderRadius: TlDecoration.brBtnOther,
                  child: AnimatedContainer(
                    curve: Curves.fastOutSlowIn,
                    duration: const Duration(milliseconds: 500),
                    color: (index == i) ? color ?? colors?.primary : colors?.color4,
                    height: 4,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ];
  }
}
