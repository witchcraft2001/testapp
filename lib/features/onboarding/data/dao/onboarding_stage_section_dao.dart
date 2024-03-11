// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/data/dao/media_content/media_content_dao.dart';

part 'onboarding_stage_section_dao.freezed.dart';
part 'onboarding_stage_section_dao.g.dart';

@freezed
class OnboardingStageSectionDao with _$OnboardingStageSectionDao {
  const factory OnboardingStageSectionDao({
    required String id,
    required String title,
    @JsonKey(name: 'sort_id') required int sortId,
    @Default(<MediaContentDao>[]) List<MediaContentDao> stories,
  }) = _OnboardingStageSectionDao;

  factory OnboardingStageSectionDao.fromJson(Map<String, dynamic> json) =>
      _$OnboardingStageSectionDaoFromJson(json);
}
