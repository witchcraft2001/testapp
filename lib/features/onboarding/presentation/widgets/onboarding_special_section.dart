part of '../onboarding_screen.dart';

class _OnboardingSpecialSectionWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String subtitle;
  final String image;

  const _OnboardingSpecialSectionWidget({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.onTap,
  });

  factory _OnboardingSpecialSectionWidget.fromModel({
    required OnboardingSpecialSection model,
    required VoidCallback onTap,
  }) =>
      _OnboardingSpecialSectionWidget(
        title: model.title,
        subtitle: model.subtitle,
        image: model.image,
        onTap: onTap,
      );

  @override
  Widget build(BuildContext context) {
    return TlCard(
      borderRadius: TlDecoration.brBtnBase,
      child: InkWell(
        borderRadius: TlDecoration.brBtnBase,
        onTap: () => onTap.call(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Padding(
                padding: TlSpaces.pl16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: TlSpaces.pt16,
                      child: Text(
                        title,
                        style: context.appTheme?.text.w700s22cContrast,
                      ),
                    ),
                    Padding(
                      padding: TlSpaces.pb12,
                      child: Text(
                        subtitle,
                        style: context.appTheme?.text.w400s16cContrast,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TlImage(url: image),
          ],
        ),
      ),
    );
  }
}
