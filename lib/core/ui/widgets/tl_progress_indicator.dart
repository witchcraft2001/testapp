// Flutter imports:
import 'package:flutter/material.dart';

const double _baseStrokeWidth = 4.0;

class TlProgressIndicator extends StatelessWidget {
  final EdgeInsets? margin;
  final double? size, strokeWidth;
  final Color? color;
  final bool isCentered;

  const TlProgressIndicator({
    super.key,
    this.margin,
    this.size,
    this.strokeWidth,
    this.color,
    this.isCentered = true,
  });

  @override
  Widget build(BuildContext context) {
    final indicator = Container(
      margin: margin,
      height: size,
      width: size,
      child: CircularProgressIndicator(
        color: color,
        strokeWidth: strokeWidth ?? _baseStrokeWidth,
      ),
    );

    return isCentered ? Center(child: indicator) : indicator;
  }
}
