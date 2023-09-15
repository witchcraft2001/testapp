// Dart imports:
import 'dart:io';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Project imports:
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class Avatar extends StatelessWidget {
  final String avatarUrl;
  final AvatarSize size;
  final bool withIcon;

  const Avatar({
    super.key,
    required this.avatarUrl,
    this.size = AvatarSize.m,
    this.withIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _getAvatarSize(),
      width: _getAvatarSize(),
      child: avatarUrl.isEmpty
          ? Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(_getAvatarSize() / 2)),
                color: context.appTheme?.appTheme.bordersAndIconsIcons,
              ),
              child: withIcon
                  ? Icon(
                      Icons.camera_alt_outlined,
                      size: _getAvatarSize() / 3,
                      color: context.appTheme?.appTheme.whiteOnColor,
                    )
                  : null,
            )
          : Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: context.appTheme?.appTheme.primary ?? AppColors.primary,
                  width: _getExternalCircleThickness(),
                ),
                borderRadius: BorderRadius.all(Radius.circular(_getAvatarSize() / 2)),
                color: context.appTheme?.appTheme.textOnPrimary,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: context.appTheme?.appTheme.backgroundDashboardsForms ??
                        AppColors.backgroundDashboardsForms,
                    width: _getExternalCircleThickness(),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular((_getAvatarSize() - _getInternalPadding()) / 2),
                  ),
                  color: context.appTheme?.appTheme.textOnPrimary,
                ),
                child: CircleAvatar(
                  backgroundImage: _getImageProvider(),
                  backgroundColor: context.appTheme?.appTheme.backgroundDashboardsForms,
                ),
              ),
            ),
    );
  }

  ImageProvider _getImageProvider() {
    if (avatarUrl.startsWith('http')) return CachedNetworkImageProvider(avatarUrl);

    return Image.file(File(avatarUrl)).image;
  }

  double _getInternalPadding() => switch (size) {
        AvatarSize.s => 2.0,
        AvatarSize.m => 3.0,
        AvatarSize.l => 4.0,
        AvatarSize.xl => 5.0,
      };

  double _getExternalCircleThickness() => switch (size) {
        AvatarSize.s => 1.0,
        AvatarSize.m => 1.3,
        AvatarSize.l => 2.0,
        AvatarSize.xl => 3.0,
      };

  double _getAvatarSize() => switch (size) {
        AvatarSize.s => 40.0,
        AvatarSize.m => 59.0,
        AvatarSize.l => 116.0,
        AvatarSize.xl => 195.0,
      };
}

enum AvatarSize { s, m, l, xl }
