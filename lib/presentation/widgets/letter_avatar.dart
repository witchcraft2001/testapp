// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class LetterAvatar extends StatelessWidget {
  final String initials;

  const LetterAvatar(this.initials, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      width: 56.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: context.appTheme?.appTheme.primary ?? AppColors.primary,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(28)),
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
