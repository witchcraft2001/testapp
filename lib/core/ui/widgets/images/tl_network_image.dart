// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/context_extensions.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';

class TlImage extends StatelessWidget {
  final String url;
  final BoxFit fit;
  final double? height, width;
  final bool withPlaceholder;
  final ImageProvider? provider;
  final Alignment alignment;

  const TlImage({
    super.key,
    required this.url,
    this.provider,
    this.fit = BoxFit.contain,
    this.height,
    this.width,
    this.withPlaceholder = false,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final String src = url;

    if (src.startsWith('assets')) {
      if (src.endsWith('.svg')) {
        return TlSvg(
          assetName: src,
          size: height,
          backgroundSize: height,
          fit: fit,
          alignment: alignment,
        );
      }

      return Image.asset(
        src,
        height: height,
        width: width,
        fit: fit,
        alignment: alignment,
        errorBuilder: (_, __, ___) =>
            withPlaceholder ? _TlNetworkImageError(height: height, width: width) : const SizedBox(),
      );
    }

    return TlNetworkImage(
      url: src,
      height: height,
      width: width,
      fit: fit,
      alignment: alignment,
    );
  }
}

class TlNetworkImage extends StatelessWidget {
  final String url;
  final BoxFit? fit;
  final double? height, width;
  final bool withPlaceholder;
  final Alignment alignment;

  const TlNetworkImage({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
    this.withPlaceholder = false,
    this.alignment = Alignment.center,
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
      alignment: alignment,
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
    final color = context.appTheme!.colors.brAndIcons;

    return Container(
      height: height ?? size,
      width: width ?? size,
      decoration: BoxDecoration(border: Border.all(color: color)),
      child: Align(
        alignment: Alignment.center,
        child: Icon(
          Icons.image_not_supported_outlined,
          color: color,
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
