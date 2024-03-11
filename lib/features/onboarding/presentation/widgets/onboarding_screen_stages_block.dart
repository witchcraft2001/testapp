part of '../onboarding_screen.dart';

class _OnboardingScreenStagesBlock extends StatelessWidget {
  const _OnboardingScreenStagesBlock({required this.stagesSections});

  final List<OnboardingStageSection> stagesSections;

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return DecoratedSliver(
      decoration: BoxDecoration(color: colors?.color2),
      sliver: SliverList.builder(
        itemCount: stagesSections.length,
        itemBuilder: (context, index) {
          final OnboardingStageSection substage = stagesSections[index];

          return Padding(
            padding: TlSpaces.ph12,
            child: _OnboardingStageSection(
              title: substage.title,
              onTap: () {
                appNavigationService.goNamed(
                  context,
                  AppRoutes.onboardingMediaContent.name,
                  pathParameters: {
                    AppNavigationKeys.id: substage.id,
                  },
                  extra: {
                    AppNavigationKeys.stories: substage.stories,
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
