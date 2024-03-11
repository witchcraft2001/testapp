part of '../onboarding_screen.dart';

class _OnboardingUsefullMaterial extends StatelessWidget {
  const _OnboardingUsefullMaterial({
    required this.material,
    required this.backgroundColor,
  });
  final OnboardingUsefullMaterial material;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: TlCard(
        elevation: 0,
        borderRadius: TlDecoration.brBtnBase,
        backgroundColor: backgroundColor,
        child: InkWell(
          borderRadius: TlDecoration.brBtnBase,
          onTap: () {
            appNavigationService.goNamed(
              context,
              AppRoutes.onboardingMediaContent.name,
              pathParameters: {AppNavigationKeys.id: material.id},
              extra: {AppNavigationKeys.stories: material.stories},
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: TlSpaces.ph16v8,
                  child: Text(
                    material.title,
                    maxLines: 2,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: context.appTheme?.text.w700s14cContrast,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: TlImage(
                  url: material.image,
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomRight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
