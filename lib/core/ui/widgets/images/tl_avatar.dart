// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';

class TlAvatar extends StatelessWidget {
  final String url;
  final AvatarSize size;
  final IconData? icon;
  final String? asset;
  final Color? borderColor;

  const TlAvatar({
    super.key,
    required this.url,
    this.size = AvatarSize.m,
    this.icon,
    this.asset,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final borderRaduis = Radius.circular(_getAvatarSize() / 2);
    final colors = context.appTheme?.colors;

    return SizedBox(
      height: _getAvatarSize(),
      width: _getAvatarSize(),
      child: url.isEmpty
          ? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(borderRaduis),
                color: borderColor ?? colors?.brAndIcons,
              ),
              child: _buildPlaceholder(context),
            )
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(borderRaduis),
              ),
              child: CircleAvatar(
                backgroundImage: _getImageProvider(),
                backgroundColor: colors?.bgForms,
              ),
            ),
    );
  }

  Widget? _buildPlaceholder(BuildContext context) {
    if (icon != null) {
      return Icon(
        icon,
        size: _getAvatarSize() / 2,
        color: context.appTheme?.colors.whiteOnColor,
      );
    }

    if (asset != null) {
      return TlSvg(assetName: asset!);
    }

    return null;
  }

  ImageProvider _getImageProvider() {
    if (url.startsWith('http')) {
      return CachedNetworkImageProvider(url, cacheKey: url);
    }

    return Image.file(File(url)).image;
  }

  double _getAvatarSize() => switch (size) {
        AvatarSize.s => TlSizes.avatarS,
        AvatarSize.m => TlSizes.avatarM,
        AvatarSize.l => TlSizes.avatarL,
        AvatarSize.xl => TlSizes.avatarXL,
      };
}

enum AvatarSize { s, m, l, xl }
