part of '../tasks_sbs_late_screen.dart';

class _TaskCardShimmer extends StatelessWidget {
  const _TaskCardShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appTheme?.appTheme.specialColorMenu,
      margin: TlSpaces.pb4,
      padding: TlSpaces.ph24v16,
      child: const TlShimmer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TlShimmerContent(
                  height: TlSizes.shimmerTextM,
                  width: TlSizes.shimmerTaskSbsConsultantWidth,
                ),
                TlShimmerContent(
                  margin: TlSpaces.pl12,
                  height: TlSizes.shimmerTextM,
                  width: TlSizes.shimmerTaskSbsHoursWidth,
                ),
              ],
            ),
            Padding(
              padding: TlSpaces.pt4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TlShimmerContent(
                    height: TlSizes.shimmerTextBase,
                    width: TlSizes.shimmerTaskSbsDateWidth,
                  ),
                  TlShimmerContent(
                    margin: TlSpaces.pl12,
                    height: TlSizes.shimmerTextBase,
                    width: TlSizes.shimmerTaskSbsHoursTypeWidth,
                  ),
                ],
              ),
            ),
            TlShimmerContent(
              margin: TlSpaces.pt8,
              height: TlSizes.shimmerTextM,
            ),
          ],
        ),
      ),
    );
  }
}
