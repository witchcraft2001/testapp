// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';
import 'package:terralinkapp/presentation/widgets/search_field.dart';

class TasksAppBar extends StatelessWidget {
  final int page, pages;
  final String search, hint;
  final void Function(String) onChanged;

  const TasksAppBar({
    super.key,
    required this.page,
    required this.pages,
    required this.search,
    required this.hint,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: TlSpaces.pv24,
      child: Row(
        children: [
          if (pages != 0)
            Text(
              '$page/$pages',
              style: appFontSemi(15, context.appTheme?.appTheme.second),
            ),
          Flexible(
            child: SearchField(
              padding: TlSpaces.ph24,
              hint: hint,
              text: search,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
