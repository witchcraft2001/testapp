// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';

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
    return CachedNetworkImage(
      cacheKey: url,
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
      placeholderFadeInDuration: const Duration(milliseconds: 2000),
      errorWidget: (_, __, ___) =>
          withPlaceholder ? _TlNetworkImageError(height: height, width: width) : const SizedBox(),
    );
  }
}

class _TlNetworkImageError extends StatelessWidget {
  final double? width, height;

  const _TlNetworkImageError({
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
