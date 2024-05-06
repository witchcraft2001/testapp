part of '../chats_screen.dart';

class _ChatTile extends StatelessWidget {
  final ChatFeed chat;
  final ValueChanged<ChatFeed> onPressed;

  const _ChatTile({
    required this.chat,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final text = context.appTheme?.text;

    final count = chat.unreadMessagesCount;
    final isGPT = chat.serviceId == 2;

    return TlCard(
      margin: TlSpaces.pb12,
      child: ListTile(
        contentPadding: TlSpaces.ph24,
        shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
        onTap: () => onPressed(chat),
        leading: TlAvatar(
          url: chat.avatar ?? (isGPT ? TlAssets.imageChatMascot : ''),
          assetImg: isGPT ? TlAssets.imageChatMascot : null,
          asset: isGPT ? null : TlAssets.imageChatBot,
          size: AvatarSize.s,
        ),
        title: Text(chat.name, style: text?.w600s16cMain),
        subtitle: _buildPreviewMessage(context),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (count > 0) TlTag(tag: '$count'),
            const Spacer(),
            if (chat.lastMessageTime != null)
              Text(
                chat.lastMessageTime.toSmartDateTimeString(),
                style: text?.w400s11cSignatures,
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreviewMessage(BuildContext context) {
    if (chat.lastMessage == null) {
      final text = context.appTheme?.text;

      return Text(
        chat.lastMessage ?? S.current.chatNoMessages,
        style: text?.w400s14cSignatures,
        overflow: TextOverflow.ellipsis,
      );
    }

    final colors = context.appTheme?.colors;

    return TlHtml(
      content: chat.lastMessage!,
      style: {
        'body': Style(
          margin: Margins.zero,
          color: colors?.textMain,
          fontSize: FontSize(14.0),
          fontFamily: AppFonts.base,
          textOverflow: TextOverflow.ellipsis,
        ),
        'a': Style(
          color: colors?.primary,
          fontWeight: FontWeight.w700,
        ),
      },
      onLinkTap: () => onPressed(chat),
    );
  }
}
