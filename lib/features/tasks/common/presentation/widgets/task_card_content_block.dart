// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';

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
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    return Container(
      padding: padding,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: text?.w400s12cSignatures),
          Text(
            value,
            style: text?.w700s14cMain.copyWith(color: isPrimary ? colors?.primary : null),
          ),
        ],
      ),
    );
  }
}
