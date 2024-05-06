// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_content_block.freezed.dart';

@freezed
sealed class MediaContentBlock with _$MediaContentBlock {
  // Используется в:
  // -- news
  const factory MediaContentBlock.title({
    required String id,
    required String parentId,
    required int sortId,
    required String title,
  }) = _MediaContentBlockTitle;

  // -- news
  // -- greeting cards
  const factory MediaContentBlock.textField({
    required String id,
    required String parentId,
    required int sortId,
    required String content,
  }) = _MediaContentBlockTextField;

  // -- news
  // -- greeting cards
  const factory MediaContentBlock.image({
    required String id,
    required String parentId,
    required int sortId,
    required String image,
  }) = _MediaContentBlockImage;

  // -- news
  const factory MediaContentBlock.linkButton({
    required String id,
    required String parentId,
    required int sortId,
    required String link,
    required String title,
  }) = _MediaContentBlockLinkButton;

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
