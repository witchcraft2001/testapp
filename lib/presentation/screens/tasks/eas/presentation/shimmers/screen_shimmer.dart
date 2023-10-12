part of '../tasks_eas_screen.dart';

class _ScreenShimmer extends StatelessWidget {
  const _ScreenShimmer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        titleWidget: _buildAppBarShimmer(),
        backgroundColor: Colors.transparent,
      ),
      body: const _ContentShimmer(),
    );
  }

  Widget _buildAppBarShimmer() {
    return TlShimmer(
      child: Row(
        children: [
          const TlShimmerContent(
            height: TlSizes.shimmerTextM,
            width: TlSizes.shimmerTasksCountWidth,
          ),
          Flexible(
            child: TlShimmerContent(
              margin: TlSpaces.ph24,
              borderRadius: TlDecoration.brSearchField,
              height: TlSizes.shimmerField,
            ),
          ),
        ],
      ),
    );
  }
}
