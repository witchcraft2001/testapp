part of 'media_content_block.dart';

class _MediaContentBlockMarkedSubtitleWidget extends StatelessWidget {
  final String subtitle;
  final int? maxLines;

  const _MediaContentBlockMarkedSubtitleWidget({
    required this.subtitle,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    if (subtitle.isEmpty) return const SizedBox();

    return Padding(
      padding: TlSpaces.pv4,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: context.appTheme?.colors.primary,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: TlSpaces.pl12,
                  child: _MediaContentBlockSubtitleWidget(
                    subtitle: subtitle,
                    maxLines: maxLines,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
