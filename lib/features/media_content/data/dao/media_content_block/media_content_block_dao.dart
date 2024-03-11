// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_content_block_dao.freezed.dart';
part 'media_content_block_dao.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class MediaContentBlockDao with _$MediaContentBlockDao {
  const factory MediaContentBlockDao.title({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    @Default('') String title,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockTitleDao;

  const factory MediaContentBlockDao.subtitle({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    @Default('') String subtitle,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockSubtitleDao;

  const factory MediaContentBlockDao.markedSubtitle({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    @Default('') String subtitle,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockMarkedSubtitleDao;

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

  const factory MediaContentBlockDao.svg({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    required String image,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockSvgDao;

  const factory MediaContentBlockDao.linkButton({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    required String link,
    @JsonKey(name: 'button_title') required String title,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockLinkButtonDao;

  const factory MediaContentBlockDao.subscribeButton({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    required MediaPlatformDao media,
    required String link,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockSubscribeButtonDao;

  const factory MediaContentBlockDao.group({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    required MediaContentBlockDao child,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockGroupDao;

  const factory MediaContentBlockDao.numberedList({
    required String id,
    required List<MediaContentBlockDao> blocks,
    @JsonKey(name: 'story') required String parentId,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockNumberedListDao;

  const factory MediaContentBlockDao.list({
    required String id,
    required List<MediaContentBlockDao> blocks,
    @JsonKey(name: 'story') required String parentId,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockListDao;

  const factory MediaContentBlockDao.rateDialog({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    @Default('') String question,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockRateDialogDao;

  const factory MediaContentBlockDao.appeal({
    required String id,
    @JsonKey(name: 'group') required String parentId,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockAppealDao;

  const factory MediaContentBlockDao.signature({
    required String id,
    @JsonKey(name: 'group') required String parentId,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = MediaContentBlockSignatureDao;

  factory MediaContentBlockDao.fromJson(Map<String, dynamic> json) =>
      _$MediaContentBlockDaoFromJson(json);
}

enum MediaPlatformDao {
  telegram,
  youtube,
}

String? _readGroup(Map json, String key) => json[key] ?? json['group'];
