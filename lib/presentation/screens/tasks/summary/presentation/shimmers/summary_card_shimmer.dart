part of '../tasks_summary_screen.dart';

class _SummaryCardShimmer extends StatelessWidget {
  const _SummaryCardShimmer();

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: EdgeInsets.zero,
      child: TlShimmer(
        child: Container(
          padding: TlSpaces.ph16v12,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TlShimmerContent(
                    height: TlSizes.iconSizeBase,
                    width: TlSizes.iconSizeBase,
                  ),
                  TlShimmerContent(
                    height: TlSizes.shimmerTextM,
                    width: TlSizes.shimmerTasksCountWidth,
                  ),
                ],
              ),
              Flexible(
                child: Padding(
                  padding: TlSpaces.pt8,
                  child: TlShimmerContent(
                    height: TlSizes.shimmerTextM,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
