part of 'media_content_block.dart';

class _MediaContentSubscribeButtonWidget extends StatelessWidget {
  final MediaPlatform media;
  final String link;

  const _MediaContentSubscribeButtonWidget({
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
          onPressed: () => launchURL(link),
          leading: const SizedBox(),
          trailing: Padding(
            padding: TlSpaces.p2,
            child: TlSvg(
              fit: BoxFit.contain,
              assetName: switch (media) {
                MediaPlatform.telegram => TlAssets.iconTelegram,
                MediaPlatform.youtube => TlAssets.iconYoutube,
              },
            ),
          ),
        ),
      ],
    );
  }
}
