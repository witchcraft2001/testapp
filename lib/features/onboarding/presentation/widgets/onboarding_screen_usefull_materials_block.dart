part of '../onboarding_screen.dart';

class _OnboardingScreenUsefullMaterialsBlock extends StatelessWidget {
  const _OnboardingScreenUsefullMaterialsBlock({
    required this.usefullMaterials,
  });

  final List<OnboardingUsefullMaterial> usefullMaterials;

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return SliverToBoxAdapter(
      child: Container(
        color: colors?.bgForms,
        child: _OnboardingUsefullMaterials(
          usefullMaterials: usefullMaterials,
        ),
      ),
    );
  }
}
