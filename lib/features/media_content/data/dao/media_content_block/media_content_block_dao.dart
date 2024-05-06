// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_content_block_dao.freezed.dart';
part 'media_content_block_dao.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class MediaContentBlockDao with _$MediaContentBlockDao {
  const factory MediaContentBlockDao.title({
    required String id,
    @JsonKey(name: 'story', readValue: _readGroup) required String parentId,
    @Default('') String title,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockTitleDao;

  const factory MediaContentBlockDao.textField({
    required String id,
    @JsonKey(name: 'story', readValue: _readGroup) required String parentId,
    @Default('') String content,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockTextFieldDao;

  const factory MediaContentBlockDao.image({
    required String id,
    @JsonKey(name: 'story', readValue: _readGroup) required String parentId,
    String? image,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockImageDao;

  const factory MediaContentBlockDao.linkButton({
    required String id,
    @JsonKey(name: 'story', readValue: _readGroup) required String parentId,
    required String link,
    @JsonKey(name: 'button_title') required String title,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockLinkButtonDao;

  const factory MediaContentBlockDao.appeal({
    required String id,
    @JsonKey(name: 'story', readValue: _readGroup) required String parentId,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockAppealDao;

  const factory MediaContentBlockDao.signature({
    required String id,
    @JsonKey(name: 'story', readValue: _readGroup) required String parentId,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockSignatureDao;

  factory MediaContentBlockDao.fromJson(Map<String, dynamic> json) =>
      _$MediaContentBlockDaoFromJson(json);
}

String? _readGroup(Map json, String key) => json[key] ?? json['group'];
