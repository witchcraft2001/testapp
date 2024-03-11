part of '../news_screen.dart';

class _Content extends StatelessWidget {
  final NewsState data;

  const _Content({required this.data});

  @override
  Widget build(BuildContext context) {
    return TlRefresh(
      onRefresh: context.bloc<NewsCubit>().refresh,
      child: Padding(
        padding: TlSpaces.ph24,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: FeatureGuard(
                isAvailable: () => getIt<FeaturesGuardService>().isAvailable(Feature.onboarding),
                builder: (context) => const OnboardingNewbieSpecialSection(),
                placeHolder: (context) => const SizedBox(),
              ),
            ),
            SliverList.builder(
              itemCount: data.news.length,
              itemBuilder: (_, index) => _ContentCard(
                item: data.news[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
