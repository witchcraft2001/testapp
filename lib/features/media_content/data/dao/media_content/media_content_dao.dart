// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/data/dao/media_content_block/media_content_block_dao.dart';

part 'media_content_dao.freezed.dart';
part 'media_content_dao.g.dart';

@freezed
class MediaContentDao with _$MediaContentDao {
  const factory MediaContentDao({
    required String id,
    required List<MediaContentBlockDao> blocks,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _MediaContentDao;

  factory MediaContentDao.fromJson(Map<String, dynamic> json) => _$MediaContentDaoFromJson(json);
}
