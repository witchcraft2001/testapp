// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_story_block/api_story_block_dao.dart';

part 'api_story_dao.freezed.dart';
part 'api_story_dao.g.dart';

@freezed
class ApiStoryDao with _$ApiStoryDao {
  const factory ApiStoryDao({
    required String id,
    @Default(<ApiStoryBlockDao>[]) List<ApiStoryBlockDao> blocks,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _ApiStoryDao;

  factory ApiStoryDao.fromJson(Map<String, dynamic> json) =>
      _$ApiStoryDaoFromJson(json);
}
