// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/data/dao/media_content/media_content_dao.dart';

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
    @Default(<MediaContentDao>[]) List<MediaContentDao> stories,
  }) = _OnboardingSpecialSectionDao;

  factory OnboardingSpecialSectionDao.fromJson(Map<String, dynamic> json) =>
      _$OnboardingSpecialSectionDaoFromJson(json);
}
