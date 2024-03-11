part of '../onboarding_screen.dart';

class _OnboardingScreenSpecialSectionsBlock extends StatelessWidget {
  const _OnboardingScreenSpecialSectionsBlock({
    required this.specialSections,
  });

  final List<OnboardingSpecialSection> specialSections;

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return SliverList.builder(
      itemCount: specialSections.length,
      itemBuilder: (context, index) => Container(
        color: colors?.bgForms,
        child: Padding(
          padding: TlSpaces.ph16v12,
          child: _OnboardingSpecialSectionWidget.fromModel(
            model: specialSections[index],
            onTap: () {
              appNavigationService.goNamed(
                context,
                AppRoutes.onboardingMediaContent.name,
                pathParameters: {
                  AppNavigationKeys.id: specialSections[index].id,
                },
                extra: {
                  AppNavigationKeys.stories: specialSections[index].stories,
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
