part of 'media_content_block.dart';

class _MediaContentBlockSubtitleWidget extends StatelessWidget {
  final String subtitle;
  final int? maxLines;

  const _MediaContentBlockSubtitleWidget({
    required this.subtitle,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    if (subtitle.isEmpty) return const SizedBox();

    return Text(
      subtitle,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: context.appTheme?.text.w700s20cMain,
    );
  }
}
