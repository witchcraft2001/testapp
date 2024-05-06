part of '../chats_screen.dart';

class ChatTileShimmer extends StatelessWidget {
  const ChatTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return TlShimmer(
      child: ListTile(
        contentPadding: TlSpaces.ph24,
        shape: RoundedRectangleBorder(borderRadius: TlDecoration.brBase),
        leading: TlShimmerContent(
          borderRadius: TlDecoration.brAvatarLetter,
          width: TlSizes.avatarS,
          height: TlSizes.avatarS,
        ),
        title: Row(
          children: [
            TlShimmerContent(
              width: TlSizes.shimmerChatsTitle + TlSizes.shimmerChatsTitle * Random().nextInt(2),
              height: TlSizes.shimmerTextBase,
            ),
          ],
        ),
        subtitle: Row(
          children: [
            TlShimmerContent(
              width:
                  TlSizes.shimmerChatsMessage + TlSizes.shimmerChatsMessage * Random().nextInt(2),
              height: TlSizes.shimmerTextS,
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (Random().nextInt(2) == 1)
              TlShimmerContent(
                padding: TlSpaces.ph12v4,
                borderRadius: TlDecoration.brTagBase,
                height: TlSizes.shimmerTextM,
                width: TlSizes.shimmerChatsUnread,
              ),
            const Spacer(),
            if ((Random().nextInt(2) == 1))
              const TlShimmerContent(
                width: TlSizes.shimmerChatsTime,
                height: TlSizes.shimmerTextBase,
              ),
          ],
        ),
      ),
    );
  }
}
