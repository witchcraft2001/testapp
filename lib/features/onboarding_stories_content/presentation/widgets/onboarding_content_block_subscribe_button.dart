part of 'onboarding_content_block.dart';

class _OnboardingContentSubscribeButtonWidget extends StatelessWidget {
  final OnboardingMediaPlatform media;
  final String link;

  const _OnboardingContentSubscribeButtonWidget({
    required this.media,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    if (link.isEmpty) {
      return const SizedBox();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TlButton(
          title: S.current.btnSubscribe,
          type: AppBtnType.primary,
          format: AppBtnFormat.compact,
          onPressed: () => goToUrl(link),
          leading: const SizedBox(),
          trailing: Padding(
            padding: TlSpaces.p2,
            child: TlSvg(
              fit: BoxFit.contain,
              assetName: switch (media) {
                OnboardingMediaPlatform.telegram => TlAssets.iconTelegram,
                OnboardingMediaPlatform.youtube => TlAssets.iconYoutube,
              },
            ),
          ),
        ),
      ],
    );
  }
}
