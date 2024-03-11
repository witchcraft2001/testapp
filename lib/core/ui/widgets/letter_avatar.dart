// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';

class LetterAvatar extends StatelessWidget {
  const LetterAvatar(
    this.initials, {
    super.key,
    this.color,
  });

  final String initials;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return Container(
      height: TlSizes.avatarLetter,
      width: TlSizes.avatarLetter,
      decoration: BoxDecoration(
        border: Border.all(
          color: color ?? colors?.primary ?? AppColors.stPrimary,
        ),
        borderRadius: TlDecoration.brAvatarLetter,
        color: color ?? colors?.primary,
      ),
      child: Center(
        child: Text(
          initials,
          style: context.appTheme?.text.w700s18cWhite,
        ),
      ),
    );
  }
}
