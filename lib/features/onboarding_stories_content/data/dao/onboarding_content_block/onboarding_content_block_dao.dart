// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_content_block_dao.freezed.dart';
part 'onboarding_content_block_dao.g.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
sealed class OnboardingContentBlockDao with _$OnboardingContentBlockDao {
  const factory OnboardingContentBlockDao.title({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    @Default('') String title,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockTitleDao;

  const factory OnboardingContentBlockDao.subtitle({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    @Default('') String subtitle,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockSubtitleDao;

  const factory OnboardingContentBlockDao.markedSubtitle({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    @Default('') String subtitle,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockMarkedSubtitleDao;

  const factory OnboardingContentBlockDao.textField({
    required String id,
    @JsonKey(name: 'story', readValue: _readGroup) required String parentId,
    @Default('') String content,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockTextFieldDao;

  const factory OnboardingContentBlockDao.image({
    required String id,
    @JsonKey(name: 'story', readValue: _readGroup) required String parentId,
    String? image,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockImageDao;

  const factory OnboardingContentBlockDao.svg({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    required String image,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockSvgDao;

  const factory OnboardingContentBlockDao.linkButton({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    required String link,
    @JsonKey(name: 'button_title') required String title,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockLinkButtonDao;

  const factory OnboardingContentBlockDao.subscribeButton({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    required OnboardingPlatformDao media,
    required String link,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockSubscribeButtonDao;

  const factory OnboardingContentBlockDao.group({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    required OnboardingContentBlockDao child,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockGroupDao;

  const factory OnboardingContentBlockDao.numberedList({
    required String id,
    required List<OnboardingContentBlockDao> blocks,
    @JsonKey(name: 'story') required String parentId,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockNumberedListDao;

  const factory OnboardingContentBlockDao.list({
    required String id,
    required List<OnboardingContentBlockDao> blocks,
    @JsonKey(name: 'story') required String parentId,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockListDao;

  const factory OnboardingContentBlockDao.rateDialog({
    required String id,
    @JsonKey(name: 'story') required String parentId,
    @Default('') String question,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = OnboardingContentBlockRateDialogDao;

  factory OnboardingContentBlockDao.fromJson(Map<String, dynamic> json) =>
      _$OnboardingContentBlockDaoFromJson(json);
}

enum OnboardingPlatformDao {
  telegram,
  youtube,
}

String? _readGroup(Map json, String key) => json[key] ?? json['group'];
