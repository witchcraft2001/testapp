part of '../news_screen.dart';

class _ContentShimmer extends StatelessWidget {
  const _ContentShimmer();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: TlSpaces.ph24,
      itemCount: 10,
      itemBuilder: (_, __) => const _ContentCardShimmer(),
    );
  }
}
