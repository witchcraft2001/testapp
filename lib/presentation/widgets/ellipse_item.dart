// Flutter imports:
import 'package:flutter/material.dart';

class EllipseItem extends StatelessWidget {
  final Widget? child;
  final Color color;
  final EdgeInsets? padding;
  final double? size;

  const EllipseItem({super.key, required this.color, this.child, this.padding, this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 26,
      width: size ?? 26,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(13.0)),
          color: color,
        ),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(5.0),
          child: child,
        ),
      ),
    );
  }
}
