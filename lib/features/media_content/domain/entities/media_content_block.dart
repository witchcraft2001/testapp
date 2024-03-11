// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/domain/entities/media_content_rich_text_elements.dart';
import 'package:terralinkapp/features/media_content/domain/entities/media_platform.dart';

part 'media_content_block.freezed.dart';

@freezed
sealed class MediaContentBlock with _$MediaContentBlock {
  // Use in:
  // -- news, onboarding
  const factory MediaContentBlock.title({
    required String id,
    required String parentId,
    required int sortId,
    required String title,
  }) = _MediaContentBlockTitle;

  // -- news, onboarding
  const factory MediaContentBlock.subtitle({
    required String id,
    required String parentId,
    required int sortId,
    required String subtitle,
  }) = _MediaContentBlockSubtitle;

  // -- onboarding
  const factory MediaContentBlock.markedSubtitle({
    required String id,
    required String parentId,
    required int sortId,
    required String subtitle,
  }) = _MediaContentBlockMarkedSubtitle;

  // -- news, onboarding, greeting cards
  const factory MediaContentBlock.textField({
    required String id,
    required String parentId,
    required int sortId,
    required String content,
  }) = _MediaContentBlockTextField;

  // -- news, onboarding, greeting cards
  const factory MediaContentBlock.richTextField({
    required String id,
    required String parentId,
    required int sortId,
    required List<ContentRichTextElement> elements,
  }) = _MediaContentBlockRichTextField;

  // -- news, onboarding, greeting cards
  const factory MediaContentBlock.image({
    required String id,
    required String parentId,
    required int sortId,
    required String image,
  }) = _MediaContentBlockImage;

  // -- onboarding
  const factory MediaContentBlock.svg({
    required String id,
    required String parentId,
    required int sortId,
    required String image,
  }) = _MediaContentBlockSvg;

  // -- news, onboarding
  const factory MediaContentBlock.linkButton({
    required String id,
    required String parentId,
    required int sortId,
    required String link,
    required String title,
  }) = _MediaContentBlockLinkButton;

  // -- onboarding
  const factory MediaContentBlock.subscribeButton({
    required String id,
    required String parentId,
    required int sortId,
    required MediaPlatform media,
    required String link,
  }) = _MediaContentBlockSubscribeButton;

  // --
  const factory MediaContentBlock.group({
    required String id,
    required String parentId,
    required int sortId,
    required MediaContentBlock child,
  }) = _MediaContentBlockGroup;

  // -- onboarding
  const factory MediaContentBlock.numberedList({
    required String id,
    required String parentId,
    required int sortId,
    required List<MediaContentBlock> blocks,
  }) = _MediaContentBlockNumberedList;

  // -- onboarding
  const factory MediaContentBlock.list({
    required String id,
    required String parentId,
    required int sortId,
    required List<MediaContentBlock> blocks,
  }) = _MediaContentBlockList;

  // -- onboarding
  const factory MediaContentBlock.rateDialog({
    required String id,
    required String parentId,
    required int sortId,
    required String question,
  }) = _MediaContentBlockRateDialog;

  // -- greeting cards
  const factory MediaContentBlock.appeal({
    required String id,
    required String parentId,
    required int sortId,
  }) = _MediaContentBlockAppeal;

  // -- greeting cards
  const factory MediaContentBlock.signature({
    required String id,
    required String parentId,
    required int sortId,
  }) = _MediaContentBlockSignature;
}
