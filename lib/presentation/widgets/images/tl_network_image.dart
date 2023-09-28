// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/context.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TlNetworkImage extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  final double? height, width;
  final bool withPlaceholder;

  const TlNetworkImage({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
    this.withPlaceholder = false,
  });

  @override
  Widget build(BuildContext context) {
    final String src = url;

    return CachedNetworkImage(
      imageUrl: src,
      height: height,
      width: width,
      fit: fit,
      errorWidget: (_, __, ___) =>
          withPlaceholder ? _TlImageError(height: height, width: width) : const SizedBox(),
    );
  }
}

class _TlImageError extends StatelessWidget {
  final double? width, height;

  const _TlImageError({
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final size = _getSize(context);

    return Container(
      height: height ?? size,
      width: width ?? size,
      decoration: BoxDecoration(
        border: Border.all(color: context.appTheme!.appTheme.second),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.image_not_supported_outlined,
          color: context.appTheme!.appTheme.second,
          size: size / 4,
        ),
      ),
    );
  }

  double _getSize(BuildContext context) {
    if (height == null && width == null) {
      final height = context.height;

      return height / 6;
    }

    return (height ?? width)!;
  }
}
