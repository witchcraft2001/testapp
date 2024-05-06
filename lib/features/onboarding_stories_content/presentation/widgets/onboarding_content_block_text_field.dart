part of 'onboarding_content_block.dart';

class _OnboardingContentBlockTextFieldWidget extends StatelessWidget {
  final String text;
  final OnboardingContentBlockParamsText params;

  const _OnboardingContentBlockTextFieldWidget({
    required this.text,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) return const SizedBox();

    return Padding(
      padding: params.padding,
      child: Text(
        text,
        style: context.appTheme?.text.w400s17cMain.copyWith(color: params.color),
      ),
    );
  }
}
