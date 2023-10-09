part of '../chat_screen.dart';

class _ContentShimmerBody extends StatelessWidget {
  const _ContentShimmerBody();

  @override
  Widget build(BuildContext context) {
    return TlShimmer(
      child: Padding(
        padding: TlSpaces.ph24t12,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            _ChatMessageShimmer(),
            _ChatMessageShimmer(
              isPaddingNeed: true,
              isMyMessage: true,
            ),
            _ChatMessageShimmer(
              isPaddingNeed: true,
            ),
            _ChatMessageShimmer(
              height: TlSizes.shimmerChatMessageM,
              width: TlSizes.chatMaxWidth,
            ),
            _ChatMessageShimmer(
              isPaddingNeed: true,
              isMyMessage: true,
            ),
            _ChatMessageShimmer(
              isPaddingNeed: true,
            ),
            _ChatMessageShimmer(),
            _ChatMessageShimmer(
              height: TlSizes.shimmerChatMessageM,
              width: TlSizes.chatMaxWidth,
            ),
            _ChatMessageShimmer(
              isPaddingNeed: true,
              isMyMessage: true,
            ),
          ],
        ),
      ),
    );
  }
}
