// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_message.dart';

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
    return Padding(
      padding: isPaddingNeed ? TlSpaces.pt8b4 : TlSpaces.pb4,
      child: Align(
        alignment: isMyMessage ? Alignment.topRight : Alignment.topLeft,
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: TlSizes.chatMinWidth,
            maxWidth: TlSizes.chatMaxWidth,
          ),
          child: IntrinsicWidth(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: TlDecoration.rChatMessage,
                  topRight: TlDecoration.rChatMessage,
                  bottomLeft: isMyMessage ? TlDecoration.rChatMessage : Radius.zero,
                  bottomRight: isMyMessage ? Radius.zero : TlDecoration.rChatMessage,
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
