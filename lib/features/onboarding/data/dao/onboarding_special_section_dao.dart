// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/data/dao/onboarding_content/onboarding_content_dao.dart';

part 'onboarding_special_section_dao.freezed.dart';
part 'onboarding_special_section_dao.g.dart';

@freezed
class OnboardingSpecialSectionDao with _$OnboardingSpecialSectionDao {
  const factory OnboardingSpecialSectionDao({
    required String id,
    required String title,
    required String subtitle,
    required String image,
    @JsonKey(name: 'sort_id') required int sortId,
    @Default(<OnboardingContentDao>[]) List<OnboardingContentDao> stories,
  }) = _OnboardingSpecialSectionDao;

  factory OnboardingSpecialSectionDao.fromJson(Map<String, dynamic> json) =>
      _$OnboardingSpecialSectionDaoFromJson(json);
}
