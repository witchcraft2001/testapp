// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:terralinkapp/core/ui/common/tl_spaces.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content.dart';
import 'package:terralinkapp/features/onboarding_stories_content/presentation/widgets/onboarding_content_block.dart';

class OnboardingContentView extends StatelessWidget {
  final OnboardingContent content;

  const OnboardingContentView({
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: TlSpaces.safeAreaPadding(
        context,
        left: true,
        right: true,
        bottom: true,
        bottomOffset: TlSpaces.sp16,
      ),
      itemCount: content.blocks.length,
      itemBuilder: (_, index) => Padding(
        padding: TlSpaces.ph24t12,
        child: OnboardingContentBlockWidget(block: content.blocks[index]),
      ),
    );
  }
}
