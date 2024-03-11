// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_content_rich_text_elements.freezed.dart';

@freezed
sealed class ContentRichTextElement with _$ContentRichTextElement {
  const factory ContentRichTextElement.text({
    required String text,
  }) = _ContentRichTextElementText;

  const factory ContentRichTextElement.textBold({
    required String text,
  }) = _ContentRichTextElementTextBold;

  const factory ContentRichTextElement.link({
    required String text,
    required String link,
  }) = _ContentRichTextElementLink;

  const factory ContentRichTextElement.linkBold({
    required String text,
    required String link,
  }) = _ContentRichTextElementLinkBold;

  const factory ContentRichTextElement.orderedList({
    required List<ContentRichTextElement> children,
  }) = _ContentRichTextElementOrderedList;

  const factory ContentRichTextElement.unorderedList({
    required List<ContentRichTextElement> children,
  }) = _ContentRichTextElementUnorderedList;

  const factory ContentRichTextElement.paragraph({
    required List<ContentRichTextElement> children,
  }) = _ContentRichTextElementParagraph;

  const factory ContentRichTextElement.unsupported() = ContentRichTextElementUnsupported;
}
