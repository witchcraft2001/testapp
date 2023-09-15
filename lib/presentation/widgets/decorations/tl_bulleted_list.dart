// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/app_style.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TlBulletedList extends StatelessWidget {
  final List<Widget> list;
  final bool isNumbered;

  const TlBulletedList({
    super.key,
    required this.list,
    this.isNumbered = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (_, index) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Mark(mark: isNumbered ? '${index + 1}.' : null),
          Flexible(child: list[index]),
        ],
      ),
    );
  }
}

class _Mark extends StatelessWidget {
  final String? mark;

  const _Mark({this.mark});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: TlSpaces.pr12,
      child: Text(
        mark ?? '\u2022',
        style: appFontRegular(17, context.appTheme?.appTheme.primary),
      ),
    );
  }
}
