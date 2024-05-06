part of 'onboarding_content_block.dart';

class _OnboardingContentBlockImageWidget extends StatelessWidget {
  final String? image;
  final OnboardingContentBlockParamsImage params;

  const _OnboardingContentBlockImageWidget({
    required this.image,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    if (image == null || image!.isEmpty) return const SizedBox();

    final child = TlImage(
      url: image!,
      withPlaceholder: true,
    );

    return params.withBorderRadius
        ? ClipRRect(
            borderRadius: TlDecoration.brBase,
            child: child,
          )
        : child;
  }
}
