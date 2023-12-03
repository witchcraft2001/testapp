part of '../news_screen.dart';

class _CardImage extends StatelessWidget {
  final String? url;

  const _CardImage({
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    if (url == null) return const SizedBox();

    final imageSize = context.width / 3;

    return ClipRRect(
      borderRadius: TlDecoration.brNewsImage,
      child: TlNetworkImage(
        url: url!,
        width: imageSize,
        height: imageSize,
      ),
    );
  }
}
