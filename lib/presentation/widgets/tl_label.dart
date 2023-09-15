// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class TlLabel extends StatelessWidget {
  final String text;
  final EdgeInsets? padding;

  const TlLabel({super.key, required this.text, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? TlSpaces.pb8,
      child: Text(
        text,
        style: ThemeProvider.labelLarge.copyWith(color: context.appTheme?.appTheme.textSignatures),
      ),
    );
  }
}
