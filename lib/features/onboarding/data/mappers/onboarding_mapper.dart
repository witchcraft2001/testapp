// Project imports:
import 'package:terralinkapp/features/media_content/data/mappers/media_content_mapper.dart';
import 'package:terralinkapp/features/media_content/data/services/media_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/onboarding/data/dao/onboarding_special_section_dao.dart';
import 'package:terralinkapp/features/onboarding/data/dao/onboarding_stage_section_dao.dart';
import 'package:terralinkapp/features/onboarding/data/dao/onboarding_usefull_materials_dao.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_special_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_stages_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_usefull_section.dart';

extension OnboardingSpecialSectionDaoToDomain on OnboardingSpecialSectionDao {
  OnboardingSpecialSection toDomain(MediaContentParsingTagsService service) =>
      OnboardingSpecialSection(
        stories: stories.map((e) => e.toDomain(service, "")).toList(),
        id: id,
        sortId: sortId,
        title: title,
        subtitle: subtitle,
        image: image,
      );
}

extension OnboardingUsefullMaterialDaoToDomain on OnboardingUsefullMaterialDao {
  OnboardingUsefullMaterial toDomain(MediaContentParsingTagsService service) =>
      OnboardingUsefullMaterial(
        stories: stories.map((e) => e.toDomain(service, "")).toList(),
        id: id,
        sortId: sortId,
        title: title,
        image: image,
        backgroundColor: backgroundColor,
      );
}

extension OnboardingStageSectionDaoToDomain on OnboardingStageSectionDao {
  OnboardingStageSection toDomain(MediaContentParsingTagsService service) => OnboardingStageSection(
        stories: stories.map((e) => e.toDomain(service, "")).toList(),
        id: id,
        sortId: sortId,
        title: title,
      );
}
