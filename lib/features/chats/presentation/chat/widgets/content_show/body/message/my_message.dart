// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/theme/data/app_colors.dart';
import 'package:terralinkapp/core/theme/data/theme_provider.dart';
import 'package:terralinkapp/core/ui/common/tl_decorations.dart';
import 'package:terralinkapp/core/ui/common/tl_sizes.dart';
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/core/ui/widgets/markdown/tl_markdown.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/presentation/chat/widgets/content_show/body/message/my_message_vote.dart';

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
    return Container(
      padding: isPaddingNeed ? TlSpaces.pt8b4 : TlSpaces.pb4,
      constraints: const BoxConstraints(
        minWidth: TlSizes.chatMinWidth,
        maxWidth: TlSizes.chatMaxWidth,
      ),
      child: Align(
        alignment: isMyMessage ? Alignment.topRight : Alignment.topLeft,
        child: Stack(
          children: [
            _MyMessage(
              message: message,
              isMyMessage: isMyMessage,
            ),
            if (!isMyMessage && message.isNeedVote) MyMessageVote(message: message),
          ],
        ),
      ),
    );
  }
}

class _MyMessage extends StatelessWidget {
  final ChatMessage message;
  final bool isMyMessage;

  const _MyMessage({
    required this.message,
    required this.isMyMessage,
  });

  @override
  Widget build(BuildContext context) {
    final text = context.appTheme?.text;
    final colors = context.appTheme?.colors;

    return IntrinsicWidth(
      child: Container(
        margin: message.isNeedVote ? TlSpaces.pb12 : null,
        constraints: const BoxConstraints(
          maxWidth: TlSizes.chatMaxWidth,
        ),
        padding: TlSpaces.ph16v8,
        decoration: BoxDecoration(
          color: colors?.bgMenu,
          borderRadius: BorderRadius.only(
            topLeft: TlDecoration.rChatMessage,
            topRight: TlDecoration.rChatMessage,
            bottomLeft: isMyMessage ? TlDecoration.rChatMessage : Radius.zero,
            bottomRight: isMyMessage ? Radius.zero : TlDecoration.rChatMessage,
          ),
          border: Border.all(
            color: colors?.brAndIconsStrokes ?? appColorsThemeLight.brAndIconsStrokes,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TlMarkdown(data: message.text),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(
                message.dateTime.toTimeString(),
                style: text?.w400s13cSignatures,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
