// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/domain/chat_message.dart';
import 'package:terralinkapp/presentation/common/tl_spaces.dart';
import 'package:terralinkapp/presentation/theme/app_colors.dart';
import 'package:terralinkapp/presentation/theme/theme_provider.dart';

class MyMessage extends StatelessWidget {
  final ChatMessage message;
  final bool isMyMessage;
  final bool isPaddingNeed;

  const MyMessage({
    super.key,
    required this.message,
    required this.isMyMessage,
    required this.isPaddingNeed,
  });

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(25.0);

    return Padding(
      padding: isPaddingNeed ? TlSpaces.pt8b4 : TlSpaces.pb4,
      child: Align(
        alignment: isMyMessage ? Alignment.topRight : Alignment.topLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 220.0, maxWidth: 320.0),
          child: IntrinsicWidth(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: radius,
                  topRight: radius,
                  bottomLeft: isMyMessage ? radius : Radius.zero,
                  bottomRight: isMyMessage ? Radius.zero : radius,
                ),
                border: Border.all(
                  color: context.appTheme?.appTheme.bordersAndIconsWidgetStrokes ??
                      AppColors.bordersAndIconsWidgetStrokes,
                ),
                color: context.appTheme?.appTheme.specialColorMenu,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: TlSpaces.pr8,
                      child: Text(
                        message.text,
                        style: ThemeProvider.labelLarge
                            .copyWith(color: context.appTheme?.appTheme.textMain),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        message.dateTime.toTimeString(),
                        style: ThemeProvider.labelMedium
                            .copyWith(color: context.appTheme?.appTheme.textSignatures),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
