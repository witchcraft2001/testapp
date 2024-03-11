part of '../profile_screen.dart';

class _LikesCountShimmer extends StatelessWidget {
  final bool isMy;
  const _LikesCountShimmer({
    required this.isMy,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;
    final baseColor = isMy ? colors?.primary.withOpacity(0.3) : colors?.color17;

    return TlShimmer(
      baseColor: baseColor,
      highlightColor: isMy ? colors?.color1 : colors?.color14,
      child: TlShimmerContent(
        color: baseColor,
        width: TlSizes.shimmerProfileLikesCountWidth,
        height: TlSizes.shimmerProfileLikesCountHeight,
      ),
    );
  }
}
