// Flutter imports:
import 'package:flutter/material.dart';

Color? tryParseColor(String colorApi) {
  if (colorApi.isEmpty) return null;

  final colorRaw = '0xFF${colorApi.replaceAll(RegExp(r'\W+'), '')}';

  final color = int.tryParse(colorRaw);

  return color != null ? Color(color) : null;
}
