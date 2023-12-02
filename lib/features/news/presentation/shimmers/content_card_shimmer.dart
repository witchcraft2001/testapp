part of '../news_screen.dart';

class _ContentCardShimmer extends StatelessWidget {
  const _ContentCardShimmer();

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: TlSpaces.pv12,
      child: Container(
        padding: TlSpaces.p24,
        decoration: BoxDecoration(
          borderRadius: TlDecoration.brNews,
        ),
        child: TlShimmer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TlShimmerContent(
                margin: TlSpaces.pb16,
                borderRadius: TlDecoration.brTagXl,
                height: TlSizes.shimmerTagHeight,
                width: TlSizes.shimmerTagWidth,
              ),
              const TlShimmerContent(
                margin: TlSpaces.pb16,
                height: TlSizes.shimmerNewsTitleHeight,
              ),
              const TlShimmerContent(
                height: TlSizes.shimmerNewsContentHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
