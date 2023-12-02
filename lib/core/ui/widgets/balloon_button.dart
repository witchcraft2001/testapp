// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/theme/data/theme_provider.dart';

class BalloonButton extends StatelessWidget {
  final String text;
  final String command;
  final bool isSelected;
  final ValueChanged<String> onPressed;

  const BalloonButton({
    super.key,
    required this.text,
    required this.command,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(command),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(13.0)),
          color: isSelected ? context.appTheme?.appTheme.accent : context.appTheme?.appTheme.bordersAndIconsIcons,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: context.appTheme?.appTheme.whiteOnColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
