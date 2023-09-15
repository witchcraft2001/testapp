// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/app_tag_content/app_tag_content.dart';
import 'package:terralinkapp/data/services/app_parsing_tags_service.dart';
import 'package:terralinkapp/injection.dart';

part 'api_story_block.freezed.dart';
part 'api_story_block.g.dart';

// ignore: constant_identifier_names
enum ApiStoryBlockType { title, text_field, image, link_button }

abstract class AApiStoryBlock {}

@freezed
class ApiStoryBlock extends AApiStoryBlock with _$ApiStoryBlock {
  const factory ApiStoryBlock({
    required String id,
    required String story, // parent id
    required ApiStoryBlockType type,
    @Default('') String title,
    @Default('') String link,
    @Default('') String content, // support some tags
    String? image,
    @JsonKey(name: 'button_title') @Default('') String buttonTitle,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _ApiStoryBlock;

  factory ApiStoryBlock.fromJson(Map<String, dynamic> json) => _$ApiStoryBlockFromJson(json);
}

extension ApiStoryBlockExtensions on ApiStoryBlock {
  List<AppTagContent> get parsedContent => getIt<AppParsingTagsService>().parseData(content);
}
