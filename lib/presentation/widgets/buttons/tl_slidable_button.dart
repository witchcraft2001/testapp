// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_sizes.dart';
import 'package:terralinkapp/presentation/widgets/tl_svg.dart';

class TLSlidableButton extends StatelessWidget {
  final String assetName;
  final VoidCallback onPressed;
  final double width;
  final Color? assetColor, backgroundColor;
  final EdgeInsets? margin;

  const TLSlidableButton({
    super.key,
    required this.assetName,
    required this.onPressed,
    this.width = TlSizes.taskSlidableActionWidth,
    this.assetColor,
    this.backgroundColor,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size.fromWidth(width),
      child: Container(
        margin: margin,
        color: backgroundColor,
        child: InkWell(
          onTap: onPressed,
          child: TlSvg(
            assetName: assetName,
            backgroundSize: TlSizes.btnIconSize,
            size: TlSizes.btnIconSize,
            color: assetColor,
          ),
        ),
      ),
    );
  }
}
