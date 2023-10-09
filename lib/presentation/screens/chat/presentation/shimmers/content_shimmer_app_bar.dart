part of '../chat_screen.dart';

class _ContentShimmerAppBar extends StatelessWidget {
  const _ContentShimmerAppBar();

  @override
  Widget build(BuildContext context) {
    return TlShimmer(
      child: Padding(
        padding: TlSpaces.ph24,
        child: Row(
          children: [
            TlShimmerContent(
              margin: TlSpaces.pr12,
              borderRadius: TlDecoration.brAvatarLetter,
              height: TlSizes.avatarLetter,
              width: TlSizes.avatarLetter,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TlShimmerContent(
                  margin: TlSpaces.pb4,
                  height: TlSizes.shimmerTextBase,
                  width: TlSizes.shimmerChatTitleWidth,
                ),
                TlShimmerContent(
                  height: TlSizes.shimmerTextBase,
                  width: TlSizes.shimmerChatStatusWidth,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
