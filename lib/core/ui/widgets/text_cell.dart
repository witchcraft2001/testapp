// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'base_text_cell.dart';

class TextCell extends StatelessWidget {
  final Widget? icon;
  final String title;
  final String? subtitleText;
  final Widget? subtitle;
  final String? middleText;
  final VoidCallback? onClick;
  final Color? foreground;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? middleStyle;
  final double? minHeight;

  const TextCell({
    super.key,
    this.icon,
    required this.title,
    this.subtitleText,
    this.subtitle,
    this.middleText,
    this.onClick,
    this.foreground,
    this.titleStyle,
    this.subtitleStyle,
    this.middleStyle,
    this.minHeight,
  });

  Widget _getBody() {
    return Container(
      constraints: BoxConstraints(minHeight: minHeight ?? 60.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        child: BaseTextCell(
          icon: icon,
          title: title,
          subtitleText: subtitleText,
          subtitle: subtitle,
          middleText: middleText,
          foreground: foreground,
          titleStyle: titleStyle,
          subtitleStyle: subtitleStyle,
          middleStyle: middleStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (onClick != null) {
      return GestureDetector(
        onTap: onClick,
        child: _getBody(),
      );
    }

    return _getBody();
  }
}
