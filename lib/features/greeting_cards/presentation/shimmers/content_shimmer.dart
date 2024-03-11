part of '../greeting_cards_screen.dart';

class _ContentShimmer extends StatelessWidget {
  const _ContentShimmer();

  @override
  Widget build(BuildContext context) {
    return TlShimmer(
      child: ListView(
        padding: TlSpaces.ph24,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const _BodyTemplatesShimmer(),
          ...List.generate(3, (_) => const _BodyFieldShimmer()),
          const _BodyPreviewShimmer(),
        ],
      ),
    );
  }
}

class _BodyTemplatesShimmer extends StatelessWidget {
  const _BodyTemplatesShimmer();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TlSizes.greetingsTemplateSize,
      margin: TlSpaces.pv16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (_, __) => const TlShimmerContent(
          margin: TlSpaces.pr16,
          width: TlSizes.greetingsTemplateSize,
        ),
      ),
    );
  }
}

class _BodyFieldShimmer extends StatelessWidget {
  const _BodyFieldShimmer();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TlShimmerContent(
          margin: TlSpaces.pb8,
          height: TlSizes.shimmerTextS,
          width: TlSizes.greetingsTemplateSize,
        ),
        TlShimmerContent(
          margin: TlSpaces.pb16,
          height: TlSizes.shimmerField,
        ),
      ],
    );
  }
}

class _BodyPreviewShimmer extends StatelessWidget {
  const _BodyPreviewShimmer();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TlShimmerContent(
          margin: TlSpaces.pb16,
          height: TlSizes.shimmerTextBase,
          width: TlSizes.greetingsTemplateSize,
        ),
        TlShimmerContent(height: context.height),
      ],
    );
  }
}
