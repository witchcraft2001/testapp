part of '../chat_screen.dart';

class _ChatMessageShimmer extends StatelessWidget {
  final bool isPaddingNeed;
  final bool isMyMessage;
  final double height;
  final double width;

  const _ChatMessageShimmer({
    this.isPaddingNeed = false,
    this.isMyMessage = false,
    this.height = TlSizes.shimmerChatMessageBase,
    this.width = TlSizes.chatMinWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isPaddingNeed ? TlSpaces.pt8b4 : TlSpaces.pb4,
      child: Align(
        alignment: isMyMessage ? Alignment.topRight : Alignment.topLeft,
        child: TlShimmerContent(
          borderRadius: BorderRadius.only(
            topLeft: TlDecoration.rChatMessage,
            topRight: TlDecoration.rChatMessage,
            bottomLeft: isMyMessage ? TlDecoration.rChatMessage : Radius.zero,
            bottomRight: isMyMessage ? Radius.zero : TlDecoration.rChatMessage,
          ),
          height: height,
          width: width,
        ),
      ),
    );
  }
}
