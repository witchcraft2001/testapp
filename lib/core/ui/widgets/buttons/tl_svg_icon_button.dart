// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';

class TlSvgIconButton extends StatelessWidget {
  final String assetName;
  final VoidCallback onPressed;
  final Color? color, backgroundColor;
  final EdgeInsets? padding;

  const TlSvgIconButton({
    super.key,
    required this.assetName,
    required this.onPressed,
    this.color,
    this.backgroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: SizedBox(
        height: TlSizes.btnIconSize,
        width: TlSizes.btnIconSize,
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          icon: TlSvg(
            assetName: assetName,
            color: color,
            backgroundColor: backgroundColor,
          ),
        ),
      ),
    );
  }
}
