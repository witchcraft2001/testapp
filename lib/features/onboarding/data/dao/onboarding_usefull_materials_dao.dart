// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/data/dao/media_content/media_content_dao.dart';

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
    @Default(<MediaContentDao>[]) List<MediaContentDao> stories,
  }) = _OnboardingUsefullMaterialDao;

  factory OnboardingUsefullMaterialDao.fromJson(Map<String, dynamic> json) =>
      _$OnboardingUsefullMaterialDaoFromJson(json);
}
