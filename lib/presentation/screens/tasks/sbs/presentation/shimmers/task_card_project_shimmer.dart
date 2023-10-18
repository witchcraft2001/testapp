part of '../tasks_sbs_screen.dart';

class _TaskCardProjectShimmer extends StatelessWidget {
  const _TaskCardProjectShimmer();

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: TlSpaces.p24,
      child: TlShimmer(
        child: Padding(
          padding: TlSpaces.p24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: TlSpaces.pb16,
                child: TlShimmerContent(
                  height: TlSizes.shimmerTaskSBSProjectHeight,
                ),
              ),
              TlShimmerContent(
                borderRadius: TlDecoration.brTagBase,
                height: TlSizes.shimmerTextBase,
                width: TlSizes.shimmerTaskSBSProjectAboutWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
