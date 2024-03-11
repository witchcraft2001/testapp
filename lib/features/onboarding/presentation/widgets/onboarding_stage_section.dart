part of '../onboarding_screen.dart';

class _OnboardingStageSection extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _OnboardingStageSection({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme?.colors;

    return TlCard(
      backgroundColor: colors?.bgHeaders,
      borderRadius: TlDecoration.brBtnBase,
      child: InkWell(
        borderRadius: TlDecoration.brBtnBase,
        onTap: onTap,
        child: TextCell(
          icon: CircleAvatar(
            backgroundColor: colors?.color3,
            child: Padding(
              padding: TlSpaces.p8,
              child: TlSvg(
                assetName: TlAssets.iconArrowRight,
                color: colors?.textContrast,
              ),
            ),
          ),
          title: title,
          titleStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: colors?.textMain,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
        ),
      ),
    );
  }
}
