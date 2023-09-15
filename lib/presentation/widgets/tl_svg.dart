// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

class TlSvg extends StatelessWidget {
  final Color? color, backgroundColor, borderColor;
  final double? size, backgroundSize;
  final String assetName;
  final BorderRadius? borderRadius;

  const TlSvg({
    super.key,
    required this.assetName,
    this.backgroundColor,
    this.borderColor,
    this.color,
    this.size,
    this.backgroundSize,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final svg = SvgPicture.asset(
      assetName,
      height: size,
      width: size,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
    );

    final child = backgroundSize != null ? FittedBox(fit: BoxFit.scaleDown, child: svg) : svg;

    return _SvgContainer(
      backgroundColor: backgroundColor,
      backgroundSize: backgroundSize,
      borderColor: borderColor,
      borderRadius: borderRadius,
      child: child,
    );
  }
}

class _SvgContainer extends StatelessWidget {
  final Color? backgroundColor, borderColor;
  final double? backgroundSize;
  final BorderRadius? borderRadius;
  final Widget child;

  const _SvgContainer({
    required this.child,
    this.backgroundColor,
    this.backgroundSize,
    this.borderColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: borderColor != null ? Border.all(color: borderColor!.withOpacity(0.3)) : null,
      ),
      height: backgroundSize,
      width: backgroundSize,
      child: child,
    );
  }
}
