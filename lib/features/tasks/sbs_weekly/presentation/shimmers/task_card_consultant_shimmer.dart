part of '../tasks_sbs_weekly_screen.dart';

class _TaskCardConsultantShimmer extends StatelessWidget {
  const _TaskCardConsultantShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appTheme?.colors.bgMenu,
      margin: TlSpaces.pb4,
      padding: TlSpaces.ph24v20,
      child: const TlShimmer(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                TlShimmerContent(
                  height: TlSizes.iconSizeM,
                  width: TlSizes.iconSizeM,
                  margin: TlSpaces.pr16,
                ),
                TlShimmerContent(
                  height: TlSizes.shimmerTextM,
                  width: TlSizes.shimmerTaskSbsConsultantWidth,
                ),
              ],
            ),
            TlShimmerContent(
              margin: TlSpaces.pl12,
              height: TlSizes.iconSizeM,
              width: TlSizes.shimmerTaskSbsHoursWidth,
            ),
          ],
        ),
      ),
    );
  }
}
