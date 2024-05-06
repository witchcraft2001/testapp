// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/data/dao/onboarding_content/onboarding_content_dao.dart';

part 'onboarding_stage_section_dao.freezed.dart';
part 'onboarding_stage_section_dao.g.dart';

@freezed
class OnboardingStageSectionDao with _$OnboardingStageSectionDao {
  const factory OnboardingStageSectionDao({
    required String id,
    required String title,
    @JsonKey(name: 'sort_id') required int sortId,
    @Default(<OnboardingContentDao>[]) List<OnboardingContentDao> stories,
  }) = _OnboardingStageSectionDao;

  factory OnboardingStageSectionDao.fromJson(Map<String, dynamic> json) =>
      _$OnboardingStageSectionDaoFromJson(json);
}
