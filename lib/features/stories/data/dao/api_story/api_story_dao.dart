// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/data/dao/media_content_block/media_content_block_dao.dart';

part 'api_story_dao.freezed.dart';
part 'api_story_dao.g.dart';

@freezed
class ApiStoryDao with _$ApiStoryDao {
  const factory ApiStoryDao({
    required String id,
    @Default(<MediaContentBlockDao>[]) List<MediaContentBlockDao> blocks,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _ApiStoryDao;

  factory ApiStoryDao.fromJson(Map<String, dynamic> json) => _$ApiStoryDaoFromJson(json);
}
