// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_tag_content.freezed.dart';

enum AppTagParentType { noTag, p, ol, ul, li }

enum AppTagContentType { text, textBold, link, linkBold }

@freezed
class AppTagContent with _$AppTagContent {
  const factory AppTagContent({
    AppTagParentType? parentType,
    AppTagContentType? contentType,
    String? text,
    String? link,
    List<AppTagContent>? children,
  }) = _AppTagContent;
}
