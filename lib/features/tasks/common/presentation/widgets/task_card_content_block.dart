// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';

class TaskCardContentBlock extends StatelessWidget {
  final String title;
  final String value;
  final bool isPrimary;
  final Color? titleColor, valueColor;
  final EdgeInsets? padding;
  final CrossAxisAlignment crossAxisAlignment;

  const TaskCardContentBlock({
    super.key,
    required this.title,
    required this.value,
    this.isPrimary = false,
    this.padding,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.titleColor,
    this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return Container(
      padding: padding,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Text(
            title,
            style: ThemeProvider.labelMedium.copyWith(
              color: titleColor ?? theme?.textSignatures,
            ),
          ),
          Text(
            value,
            style: ThemeProvider.bodyMedium.copyWith(
              color: isPrimary ? theme?.primary : valueColor ?? theme?.textMain,
            ),
          ),
        ],
      ),
    );
  }
}
