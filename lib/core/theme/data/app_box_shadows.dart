// Flutter imports:
import 'package:flutter/material.dart';

class AppThemeShadows {
  final List<BoxShadow> settingsGroup, bottomForm;

  const AppThemeShadows(
    this.settingsGroup,
    this.bottomForm,
  );
}

class AppThemeShadowsLight {
  static const List<BoxShadow> settingsGroup = [
    BoxShadow(
      blurRadius: 7.0,
      color: Color(0x3FD6E6FF),
      offset: Offset(0.0, 0.0),
    ),
  ];

  static const List<BoxShadow> likeNewForm = [
    BoxShadow(
      color: Color(0x1EA6AABC),
      blurRadius: 20,
      offset: Offset(0.0, -12),
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

  static const List<BoxShadow> likeNewForm = [
    BoxShadow(
      color: Color(0x7F000000),
      blurRadius: 20,
      offset: Offset(0.0, -12.0),
    ),
  ];
}
