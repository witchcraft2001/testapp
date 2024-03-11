// Dart imports:
import 'dart:convert';

// Flutter imports:
import 'package:flutter/services.dart' show rootBundle;

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/media_content/data/services/media_content_parsing_tags_service.dart';
import 'package:terralinkapp/features/onboarding/data/dao/onboarding_special_section_dao.dart';
import 'package:terralinkapp/features/onboarding/data/dao/onboarding_stage_section_dao.dart';
import 'package:terralinkapp/features/onboarding/data/dao/onboarding_usefull_materials_dao.dart';
import 'package:terralinkapp/features/onboarding/data/mappers/onboarding_mapper.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_special_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_stages_section.dart';
import 'package:terralinkapp/features/onboarding/domain/entities/onboarding_usefull_section.dart';
import 'package:terralinkapp/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:terralinkapp/generated/l10n.dart';

@LazySingleton(
  as: OnboardingRepository,
  env: [Environment.dev, Environment.prod],
)
class OnboardingMockRepository implements OnboardingRepository {
  final MediaContentParsingTagsService _service;

  OnboardingMockRepository({
    required MediaContentParsingTagsService service,
  }) : _service = service;

  @override
  Future<List<OnboardingSpecialSection>> getSpecialSections() async {
    final String jsonPath = S.current.mockOnboardingSpecialSectionsAssetPath;

    String data = await rootBundle.loadString(jsonPath);

    final jsonResult = jsonDecode(data);

    final List<OnboardingSpecialSection> result = List.from(jsonResult)
        .map((item) => OnboardingSpecialSectionDao.fromJson(item).toDomain(
              _service,
            ))
        .toList();

    return result;
  }

  @override
  Future<List<OnboardingStageSection>> getStagesSections() async {
    final String jsonPath = S.current.mockOnboardingStagesAssetPath;

    String data = await rootBundle.loadString(jsonPath);

    final jsonResult = jsonDecode(data);

    final List<OnboardingStageSection> result = List.from(jsonResult)
        .map((item) => OnboardingStageSectionDao.fromJson(item).toDomain(
              _service,
            ))
        .toList();

    return result;
  }

  @override
  Future<List<OnboardingUsefullMaterial>> getUsefullMaterials() async {
    final String jsonPath = S.current.mockOnboardingUsefullMaterialsAssetPath;

    String data = await rootBundle.loadString(jsonPath);

    final jsonResult = jsonDecode(data);

    final List<OnboardingUsefullMaterial> result = List.from(jsonResult)
        .map((item) => OnboardingUsefullMaterialDao.fromJson(item).toDomain(
              _service,
            ))
        .toList();

    return result;
  }
}
