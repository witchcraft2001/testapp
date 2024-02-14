part of '../profile_screen.dart';

class _LikesCountShimmer extends StatelessWidget {
  final bool isMy;
  const _LikesCountShimmer({
    required this.isMy,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;
    final baseColor = isMy ? theme?.primary.withOpacity(0.3) : theme?.color17;

    return TlShimmer(
      baseColor: baseColor,
      highlightColor: isMy ? theme?.color1 : theme?.color14,
      child: TlShimmerContent(
        color: baseColor,
        width: TlSizes.shimmerProfileLikesCountWidth,
        height: TlSizes.shimmerProfileLikesCountHeight,
      ),
    );
  }
}
