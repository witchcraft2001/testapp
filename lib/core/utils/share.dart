// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';

Rect? getSharePosition(
  BuildContext context, {
  double? height,
  Offset offset = Offset.zero,
}) {
  final box = context.findRenderObject() as RenderBox?;

  if (box != null) {
    final size = height != null ? Size(context.width, height) : box.size;

    return box.localToGlobal(offset) & size;
  }

  return null;
}
