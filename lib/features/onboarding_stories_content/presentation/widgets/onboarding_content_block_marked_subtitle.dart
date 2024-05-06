part of 'onboarding_content_block.dart';

class _OnboardingContentBlockMarkedSubtitleWidget extends StatelessWidget {
  final String subtitle;
  final int? maxLines;

  const _OnboardingContentBlockMarkedSubtitleWidget({
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
                  child: _OnboardingContentBlockSubtitleWidget(
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
