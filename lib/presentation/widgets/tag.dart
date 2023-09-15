// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class Tag extends StatelessWidget {
  final String text;
  final EdgeInsets? padding;
  final Color? background;
  final Color? foreground;

  const Tag({super.key, required this.text, this.background, this.foreground, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6.0)),
          color: background ?? context.appTheme?.appTheme.primary,
        ),
        child: Padding(
          padding: TlSpaces.ph12v4,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: foreground ?? context.appTheme?.appTheme.whiteOnColor),
          ),
        ),
      ),
    );
  }
}
