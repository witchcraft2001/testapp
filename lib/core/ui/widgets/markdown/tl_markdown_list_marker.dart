part of 'tl_markdown.dart';

class _TlMarkdownListMarker extends StatelessWidget {
  final bool isOrdered;
  final int depth, index;

  const _TlMarkdownListMarker({
    required this.isOrdered,
    required this.depth,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final text = context.appTheme!.text;
    final colors = context.appTheme!.colors;

    if (!isOrdered) {
      return Align(
        alignment: Alignment.center,
        child: Container(
          margin: const EdgeInsets.only(top: 6),
          width: 6,
          height: 6,
          decoration: _getBoxDecoration(depth % 3, colors.primary),
        ),
      );
    }

    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        '${index + 1}.',
        style: text.w700s14cPrimary,
      ),
    );
  }

  BoxDecoration _getBoxDecoration(int depth, Color color) {
    if (depth == 0) {
      return BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      );
    }

    if (depth == 1) {
      return BoxDecoration(
        border: Border.all(color: color),
        shape: BoxShape.circle,
      );
    }

    return BoxDecoration(color: color);
  }
}
