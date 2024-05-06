// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

class TlSvg extends StatelessWidget {
  final Color? color, backgroundColor, borderColor;
  final double? size, backgroundSize;
  final String assetName;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final AlignmentGeometry? backgroundAligment;

  const TlSvg({
    super.key,
    required this.assetName,
    this.borderColor,
    this.color,
    this.size,
    this.backgroundAligment,
    this.backgroundColor,
    this.backgroundSize,
    this.borderRadius,
    this.margin,
    this.fit = BoxFit.scaleDown,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return _SvgContainer(
      backgroundAligment: backgroundAligment,
      backgroundColor: backgroundColor,
      backgroundSize: backgroundSize,
      borderColor: borderColor,
      borderRadius: borderRadius,
      margin: margin,
      child: SvgPicture.asset(
        assetName,
        height: size,
        width: size,
        fit: fit,
        colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        alignment: alignment,
      ),
    );
  }
}

class _SvgContainer extends StatelessWidget {
  final Color? backgroundColor, borderColor;
  final double? backgroundSize;
  final BorderRadius? borderRadius;
  final Widget child;
  final EdgeInsets? margin;
  final AlignmentGeometry? backgroundAligment;

  const _SvgContainer({
    required this.child,
    this.backgroundColor,
    this.backgroundSize,
    this.borderColor,
    this.borderRadius,
    this.margin,
    this.backgroundAligment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: backgroundAligment,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
        border: borderColor != null ? Border.all(color: borderColor!.withOpacity(0.3)) : null,
      ),
      margin: margin,
      height: backgroundSize,
      width: backgroundSize,
      child: child,
    );
  }
}
