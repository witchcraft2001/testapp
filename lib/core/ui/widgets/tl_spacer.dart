// Flutter imports:
import 'package:flutter/material.dart';

class TlSpacer extends StatelessWidget {
  const TlSpacer({
    super.key,
    this.height,
    this.width,
  });

  factory TlSpacer.safeAreaTop(BuildContext context, {Key? key}) => TlSpacer(
        height: MediaQuery.of(context).padding.top,
        key: key,
      );

  factory TlSpacer.safeAreaBottom(BuildContext context, {Key? key}) => TlSpacer(
        height: MediaQuery.of(context).padding.bottom,
        key: key,
      );

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
