part of '../likes_my_screen.dart';

class _ContentShimmer extends StatelessWidget {
  const _ContentShimmer();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: TlSpaces.ph24t24b12,
      itemCount: 20,
      itemBuilder: (_, __) => const TlCard(
        margin: TlSpaces.pb12,
        child: _LikesMyTileShimmer(),
      ),
    );
  }
}

class _LikesMyTileShimmer extends StatelessWidget {
  const _LikesMyTileShimmer();

  @override
  Widget build(BuildContext context) {
    final isSecondRow = Random().nextInt(2) == 1;

    return TlCard(
      margin: TlSpaces.pb12,
      elevation: 0,
      child: TlShimmer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserTileShimmer(),
            _LikeTextShimmer(isFullWidth: isSecondRow),
            if (isSecondRow) const _LikeTextShimmer(margin: TlSpaces.ph24t8),
          ],
        ),
      ),
    );
  }
}

class _LikeTextShimmer extends StatelessWidget {
  final EdgeInsets? margin;
  final bool isFullWidth;

  const _LikeTextShimmer({
    this.isFullWidth = false,
    this.margin = TlSpaces.ph24,
  });

  @override
  Widget build(BuildContext context) {
    return TlShimmerContent(
      margin: margin,
      height: TlSizes.shimmerTextBase,
      width: isFullWidth
          ? null
          : TlSizes.shimmerLikeWidth + TlSizes.shimmerLikeWidth * Random().nextInt(3),
    );
  }
}
