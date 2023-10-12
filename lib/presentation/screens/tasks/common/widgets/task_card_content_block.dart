// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TaskCardContentBlock extends StatelessWidget {
  final String title;
  final String value;
  final bool isPrimary;
  final EdgeInsets? padding;

  const TaskCardContentBlock({
    super.key,
    required this.title,
    required this.value,
    this.isPrimary = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return Container(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ThemeProvider.labelMedium.copyWith(
              color: theme?.textSignatures,
            ),
          ),
          Text(
            value,
            style: ThemeProvider.bodyMedium.copyWith(
              color: isPrimary ? theme?.primary : theme?.textMain,
            ),
          ),
        ],
      ),
    );
  }
}
