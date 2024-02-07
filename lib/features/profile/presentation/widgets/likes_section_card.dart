part of '../profile_screen.dart';

class _LikesSectionCard extends StatelessWidget {
  final String title;
  final String route;
  final int? count;
  final String asset;
  final bool isMy;

  const _LikesSectionCard({
    required this.title,
    required this.route,
    required this.asset,
    this.isMy = false,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    final titleParts = title.split(' ');
    final widgets = <Widget>[];

    for (final part in titleParts) {
      final widget = Text(
        part,
        style: appFontRegular(14, isMy ? theme?.whiteOnColor : theme?.color2),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      );

      widgets.add(widget);
    }

    return TlCard(
      backgroundColor: isMy ? theme?.primary : theme?.color17,
      margin: EdgeInsets.zero,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        child: Container(
          height: TlSizes.profileLikesCardHeight,
          padding: TlSpaces.p16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCount(context),
                  TlSvg(
                    assetName: asset,
                    color: isMy ? theme?.whiteOnColor : theme?.color2,
                  ),
                ],
              ),
              Padding(
                padding: TlSpaces.pt4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                ),
              ),
            ],
          ),
        ),
        onTap: () => appNavigationService.goNamed(context, route),
      ),
    );
  }

  Widget _buildCount(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    if (count == null) return _LikesCountShimmer(isMy: isMy);

    if (count == 0) {
      return const SizedBox(height: TlSizes.shimmerProfileLikesCountHeight);
    }

    return Text(
      '$count',
      style: appFontRegular(24, isMy ? theme?.whiteOnColor : theme?.color2),
    );
  }
}
