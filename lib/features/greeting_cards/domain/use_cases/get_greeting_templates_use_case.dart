// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/greeting_cards/data/repositories/greeting_cards_repository.dart';
import 'package:terralinkapp/features/greeting_cards/domain/entities/api_greeting_template.dart';
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart';

abstract class GetGreetingTemplatesUseCase
    implements AsyncParamlessUseCase<List<ApiGreetingTemplate>> {}

@Injectable(
  as: GetGreetingTemplatesUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetGreetingTemplatesUseCaseImpl extends GetGreetingTemplatesUseCase {
  final GreetingCardsRepository _cardsRepository;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;

  GetGreetingTemplatesUseCaseImpl(
    this._cardsRepository,
    this._getRegionSettingsUseCase,
  );

  @override
  Future<List<ApiGreetingTemplate>> call([UseCaseParams params = const NoParams()]) async {
    final templates = await _cardsRepository.get();
    final region = await _getRegionSettingsUseCase();

    // Фильтрация по региону выполняется для уже закешированных данных, т.к. изменение региона пользователем носит локальный характер на стороне приложения
    return templates.where((item) {
      final isNotRegion = item.region == null;

      final regionValue = item.region?.name.toLowerCase();

      final isUserRegion = regionValue == region?.value;
      final isAllRegion = regionValue == appUserRegionAllValue;

      return (isNotRegion || isUserRegion || isAllRegion);
    }).toList();
  }
}
