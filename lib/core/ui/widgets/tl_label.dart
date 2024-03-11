// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

class TlLabel extends StatelessWidget {
  final String text;
  final EdgeInsets? padding;

  const TlLabel({
    super.key,
    required this.text,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? TlSpaces.pb8,
      child: Text(
        text,
        style: context.appTheme?.text.w400s14cSignatures,
      ),
    );
  }
}
