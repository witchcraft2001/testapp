// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../theme/app_colors.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  final Widget? button;

  const ErrorMessage({Key? key, required this.message, this.button}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
                padding: EdgeInsets.all(24.0),
                child: Icon(
                  Icons.warning_amber_outlined,
                  color: AppColors.textOnPrimary,
                  size: 54.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            button != null ? button! : Container(),
          ],
        ),
      ),
    );
  }
}
