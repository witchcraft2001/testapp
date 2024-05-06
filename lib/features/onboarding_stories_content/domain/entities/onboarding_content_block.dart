// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_content_rich_text_elements.dart';
import 'package:terralinkapp/features/onboarding_stories_content/domain/entities/onboarding_media_platform.dart';

part 'onboarding_content_block.freezed.dart';

@freezed
sealed class OnboardingContentBlock with _$OnboardingContentBlock {
  const factory OnboardingContentBlock.title({
    required String id,
    required String parentId,
    required int sortId,
    required String title,
  }) = _OnboardingContentBlockTitle;

  const factory OnboardingContentBlock.subtitle({
    required String id,
    required String parentId,
    required int sortId,
    required String subtitle,
  }) = _OnboardingContentBlockSubtitle;

  const factory OnboardingContentBlock.markedSubtitle({
    required String id,
    required String parentId,
    required int sortId,
    required String subtitle,
  }) = _OnboardingContentBlockMarkedSubtitle;

  const factory OnboardingContentBlock.textField({
    required String id,
    required String parentId,
    required int sortId,
    required String content,
  }) = _OnboardingContentBlockTextField;

  const factory OnboardingContentBlock.richTextField({
    required String id,
    required String parentId,
    required int sortId,
    required List<ContentRichTextElement> elements,
  }) = _OnboardingContentBlockRichTextField;

  const factory OnboardingContentBlock.image({
    required String id,
    required String parentId,
    required int sortId,
    required String image,
  }) = _OnboardingContentBlockImage;

  const factory OnboardingContentBlock.svg({
    required String id,
    required String parentId,
    required int sortId,
    required String image,
  }) = _OnboardingContentBlockSvg;

  const factory OnboardingContentBlock.linkButton({
    required String id,
    required String parentId,
    required int sortId,
    required String link,
    required String title,
  }) = _OnboardingContentBlockLinkButton;

  const factory OnboardingContentBlock.subscribeButton({
    required String id,
    required String parentId,
    required int sortId,
    required OnboardingMediaPlatform media,
    required String link,
  }) = _OnboardingContentBlockSubscribeButton;

  const factory OnboardingContentBlock.group({
    required String id,
    required String parentId,
    required int sortId,
    required OnboardingContentBlock child,
  }) = _OnboardingContentBlockGroup;

  const factory OnboardingContentBlock.numberedList({
    required String id,
    required String parentId,
    required int sortId,
    required List<OnboardingContentBlock> blocks,
  }) = _OnboardingContentBlockNumberedList;

  const factory OnboardingContentBlock.list({
    required String id,
    required String parentId,
    required int sortId,
    required List<OnboardingContentBlock> blocks,
  }) = _OnboardingContentBlockList;

  const factory OnboardingContentBlock.rateDialog({
    required String id,
    required String parentId,
    required int sortId,
    required String question,
  }) = _OnboardingContentBlockRateDialog;
}
