// Flutter imports:
import 'package:flutter/material.dart';

class AppThemeShadows {
  final List<BoxShadow> settingsGroup;

  AppThemeShadows(this.settingsGroup);
}

class AppThemeShadowsLight {
  static const List<BoxShadow> settingsGroup = [
    BoxShadow(
      blurRadius: 7.0,
      color: Color(0x3FD6E6FF),
      offset: Offset(0.0, 0.0),
    ),
  ];
}

class AppThemeShadowsDark {
  static const List<BoxShadow> settingsGroup = [
    BoxShadow(
      blurRadius: 7.0,
      color: Color(0x7F000000),
      offset: Offset(0.0, 0.0),
    ),
  ];
}
