part of 'media_content_block.dart';

class _MediaContentBlockImageWidget extends StatelessWidget {
  final String? image;
  final MediaContentBlockParamsImage params;

  const _MediaContentBlockImageWidget({
    required this.image,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    if (image == null || image!.isEmpty) return const SizedBox();

    final child = TlImage(
      url: image!,
      withPlaceholder: true,
    );

    return params.withBorderRadius
        ? ClipRRect(
            borderRadius: TlDecoration.brBase,
            child: child,
          )
        : child;
  }
}
