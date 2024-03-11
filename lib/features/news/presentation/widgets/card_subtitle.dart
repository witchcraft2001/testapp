part of '../news_screen.dart';

class _CardSubtitle extends StatelessWidget {
  final String subtitle;
  final Color? color;

  const _CardSubtitle({
    required this.subtitle,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (subtitle.isEmpty) return const SizedBox();

    return Flexible(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Padding(
              padding: TlSpaces.pr24b24,
              child: Text(
                subtitle,
                style: AppTextStyle.font(fontSize: 16.0, color: color),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
