// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';

// ToDo перейти на использование TlErrorData
class ErrorMessage extends StatelessWidget {
  final String message;
  final Widget? button;

  const ErrorMessage({
    super.key,
    required this.message,
    this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: TlSpaces.p20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.dangerBackground,
                borderRadius: BorderRadius.circular(64.0),
              ),
              child: const Padding(
                padding: TlSpaces.p24,
                child: Icon(
                  Icons.warning_amber_outlined,
                  color: AppColors.textOnPrimary,
                  size: 54.0,
                ),
              ),
            ),
            Padding(
              padding: TlSpaces.pv20,
              child: Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            if (button != null) button!,
          ],
        ),
      ),
    );
  }
}
