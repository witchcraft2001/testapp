// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/onboarding_stories_content/data/dao/onboarding_content/onboarding_content_dao.dart';

part 'onboarding_usefull_materials_dao.freezed.dart';
part 'onboarding_usefull_materials_dao.g.dart';

@freezed
class OnboardingUsefullMaterialDao with _$OnboardingUsefullMaterialDao {
  const factory OnboardingUsefullMaterialDao({
    required String id,
    required String title,
    required String image,
    @JsonKey(name: 'background_color') required String backgroundColor,
    @JsonKey(name: 'sort_id') required int sortId,
    @Default(<OnboardingContentDao>[]) List<OnboardingContentDao> stories,
  }) = _OnboardingUsefullMaterialDao;

  factory OnboardingUsefullMaterialDao.fromJson(Map<String, dynamic> json) =>
      _$OnboardingUsefullMaterialDaoFromJson(json);
}
