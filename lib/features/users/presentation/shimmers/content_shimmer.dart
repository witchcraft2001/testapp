part of '../users_screen.dart';

class _ContentShimmer extends StatelessWidget {
  const _ContentShimmer();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TlAppBar(titleWidget: _AppBarShimmer()),
      body: _UsersListShimmer(),
    );
  }
}

class _AppBarShimmer extends StatelessWidget {
  const _AppBarShimmer();

  @override
  Widget build(BuildContext context) {
    return const TlShimmer(
      child: TlShimmerContent(
        margin: TlSpaces.pr24,
        height: TlSizes.shimmerField,
      ),
    );
  }
}
