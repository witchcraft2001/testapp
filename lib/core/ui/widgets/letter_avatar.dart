// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';

class LetterAvatar extends StatelessWidget {
  final String initials;

  const LetterAvatar(this.initials, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TlSizes.avatarLetter,
      width: TlSizes.avatarLetter,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.appTheme?.appTheme.primary ?? AppColors.primary,
        ),
        borderRadius: TlDecoration.brAvatarLetter,
        color: context.appTheme?.appTheme.primary,
      ),
      child: Center(
        child: Text(
          initials,
          style: ThemeProvider.titleLarge.copyWith(color: context.appTheme?.appTheme.whiteOnColor),
        ),
      ),
    );
  }
}
