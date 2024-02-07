// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart';
import 'package:terralinkapp/features/news/domain/entities/api_news.dart';
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart';

abstract class GetNewsUseCase implements AsyncParamlessUseCase<List<ApiNews>> {}

@Injectable(
  as: GetNewsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetNewsUseCaseImpl extends GetNewsUseCase {
  final NewsRepository _newsRepository;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;

  GetNewsUseCaseImpl(
    this._newsRepository,
    this._getRegionSettingsUseCase,
  );

  @override
  Future<List<ApiNews>> call([UseCaseParams params = const NoParams()]) async {
    final news = await _newsRepository.get();
    final region = await _getRegionSettingsUseCase();

    return news.where((item) {
      final isNotRegion = item.region == null;

      final regionValue = item.region?.name.toLowerCase();

      final isUserRegion = regionValue == region?.value;
      final isAllRegion = regionValue == appUserRegionAllValue;

      return isNotRegion || isUserRegion || isAllRegion;
    }).toList();
  }
}
