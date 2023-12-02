// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

class Ruler extends StatelessWidget {
  final int count;
  final int index;
  final double progress;
  final Color? color;

  const Ruler({
    super.key,
    required this.count,
    required this.index,
    this.progress = 0.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _getLines(context),
    );
  }

  List<Widget> _getLines(BuildContext context) {
    var width = (context.width - ((count - 1) * 8) - 96) / count;
    var list = <Widget>[];

    for (var i = 0; i < count; i++) {
      final padding = i != count - 1 ? TlSpaces.pr8 : null;

      final colors = color ?? context.appTheme?.appTheme.second;

      list.add(Container(
        padding: padding,
        child: Container(
          color: index == i ? colors : colors!.withOpacity(0.5),
          width: width,
          height: 2.0,
        ),
      ));
    }

    return list;
  }
}
