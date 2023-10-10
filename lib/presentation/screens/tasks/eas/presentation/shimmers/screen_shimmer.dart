part of '../tasks_screen.dart';

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
          Flexible(
            child: TlShimmerContent(
              margin: TlSpaces.p24,
              borderRadius: TlDecoration.brSearchField,
              height: TlSizes.shimmerField,
            ),
          ),
          const TlShimmerContent(
            margin: TlSpaces.pr24,
            height: TlSizes.shimmerTextM,
            width: TlSizes.tasksCountWidth,
          ),
        ],
      ),
    );
  }
}
