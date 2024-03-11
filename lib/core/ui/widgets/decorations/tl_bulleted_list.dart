// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/common/tl_chars.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

class TlOrderedBulletedList extends StatelessWidget {
  final List<Widget> list;
  final Color? color;

  const TlOrderedBulletedList({
    super.key,
    required this.list,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TlBulletedList(
      children: list,
      markBuilder: ({required int index}) => _Mark(mark: '${index + 1}.', color: color),
    );
  }
}

class TlUnorderedBulletedList extends StatelessWidget {
  final List<Widget> list;
  final Color? color;

  const TlUnorderedBulletedList({
    super.key,
    required this.list,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TlBulletedList(
      children: list,
      markBuilder: ({required int index}) => _Mark(mark: null, color: color),
    );
  }
}

class TlBulletedList extends StatelessWidget {
  final List<Widget> children;
  final bool isNumbered;
  final EdgeInsets childrenPadding;
  final double? spaceBetweenItem;
  final Widget Function({required int index}) markBuilder;

  const TlBulletedList({
    super.key,
    required this.children,
    required this.markBuilder,
    this.isNumbered = false,
    this.childrenPadding = TlSpaces.p0,
    this.spaceBetweenItem = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.top,
      children: <TableRow>[
        for (int i = 0; i < children.length; i++) ...[
          if (spaceBetweenItem != null && i < children.length)
            TableRow(
              children: <Widget>[
                const SizedBox(),
                SizedBox(
                  height: spaceBetweenItem,
                ),
              ],
            ),
          TableRow(
            children: <Widget>[
              markBuilder.call(index: i),
              Padding(
                padding: childrenPadding,
                child: children[i],
              ),
            ],
          ),
        ],
      ],
    );
  }
}

class _Mark extends StatelessWidget {
  final String? mark;
  final Color? color;

  const _Mark({
    this.mark,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: TlSpaces.pr12,
      child: Text(
        mark ?? TlChars.bullet,
        style: context.appTheme?.text.w400s17cPrimary.copyWith(color: color),
      ),
    );
  }
}
