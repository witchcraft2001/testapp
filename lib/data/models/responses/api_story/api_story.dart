// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_story_block/api_story_block.dart';

part 'api_story.freezed.dart';
part 'api_story.g.dart';

@freezed
class ApiStory with _$ApiStory {
  const factory ApiStory({
    required String id,
    @Default(<ApiStoryBlock>[]) List<ApiStoryBlock> blocks,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _ApiStory;

  factory ApiStory.fromJson(Map<String, dynamic> json) => _$ApiStoryFromJson(json);
}
