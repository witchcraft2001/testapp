part of '../tasks_eas_screen.dart';

class _TaskCardActionsShimmer extends StatelessWidget {
  const _TaskCardActionsShimmer();

  @override
  Widget build(BuildContext context) {
    return const TaskBottomActionsContainer(
      child: TlShimmer(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TlShimmerContent(
              margin: TlSpaces.pb8,
              height: TlSizes.shimmerTextBase,
              width: TlSizes.shimmerTaskEasCommentWidth,
            ),
            TlShimmerContent(
              margin: TlSpaces.pb16,
              height: TlSizes.shimmerField,
            ),
            Row(
              children: [
                Flexible(
                  child: TlShimmerContent(height: TlSizes.btnBaseSize),
                ),
                SizedBox(width: TlSpaces.sp16),
                Flexible(
                  child: TlShimmerContent(height: TlSizes.btnBaseSize),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
