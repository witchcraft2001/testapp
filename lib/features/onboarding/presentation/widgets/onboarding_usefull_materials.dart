part of '../onboarding_screen.dart';

class _OnboardingUsefullMaterials extends StatelessWidget {
  const _OnboardingUsefullMaterials({
    required this.usefullMaterials,
  });

  final List<OnboardingUsefullMaterial> usefullMaterials;

  @override
  Widget build(BuildContext context) {
    final blocHeight =
        TlSizes.onboardingUsefullMaterialCardHeihgt * MediaQuery.of(context).textScaleFactor;

    final colors = context.appTheme?.colors;

    final List<Color> predictions = colors?.predictors ?? [Colors.transparent];

    return Padding(
      padding: TlSpaces.pt12,
      child: SizedBox(
        height: blocHeight,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: TlSpaces.ph16,
          itemCount: usefullMaterials.length,
          itemBuilder: (BuildContext context, int index) => LayoutBuilder(
            builder: (context, constraints) => _OnboardingUsefullMaterial(
              material: usefullMaterials[index],
              backgroundColor: predictions[index % predictions.length].withOpacity(0.5),
            ),
          ),
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: TlSpaces.sp8),
        ),
      ),
    );
  }
}
