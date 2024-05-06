// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/data/dao/onboarding_content_block/onboarding_content_block_dao.dart';

part 'onboarding_content_dao.freezed.dart';
part 'onboarding_content_dao.g.dart';

@freezed
class OnboardingContentDao with _$OnboardingContentDao {
  const factory OnboardingContentDao({
    required String id,
    required List<OnboardingContentBlockDao> blocks,
    @JsonKey(name: 'sort_id') required int sortId,
  }) = _OnboardingContentDao;

  factory OnboardingContentDao.fromJson(Map<String, dynamic> json) =>
      _$OnboardingContentDaoFromJson(json);
}
