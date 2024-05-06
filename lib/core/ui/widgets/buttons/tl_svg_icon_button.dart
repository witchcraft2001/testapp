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
  final double? height, width;

  const TlSvgIconButton({
    super.key,
    required this.assetName,
    required this.onPressed,
    this.color,
    this.backgroundColor,
    this.padding,
    this.height = TlSizes.btnIconSize,
    this.width = TlSizes.btnIconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: SizedBox(
        height: height,
        width: width,
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: onPressed,
          color: color,
          icon: Container(
            color: backgroundColor,
            child: Center(
              child: TlSvg(
                assetName: assetName,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
