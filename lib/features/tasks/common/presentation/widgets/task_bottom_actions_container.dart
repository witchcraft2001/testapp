// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

class TaskBottomActionsContainer extends StatelessWidget {
  final Widget child;

  const TaskBottomActionsContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: TlDecoration.brBottomForm,
        color: context.appTheme?.appTheme.backgroundPopupWidget,
        boxShadow: context.appTheme?.appThemeShadows.bottomForm,
      ),
      padding: TlSpaces.ph24t24b12,
      child: SafeArea(
        child: child,
      ),
    );
  }
}
