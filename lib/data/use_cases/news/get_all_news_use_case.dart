// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/settings/get_region_settings_use_case.dart';
import 'package:terralinkapp/domain/entities/api_news.dart';
import 'package:terralinkapp/domain/models/app_user_region.dart';
import 'package:terralinkapp/domain/repositories/news_repository.dart';

abstract class GetNewsUseCase {
  Future<List<ApiNews>> run();
}

@Injectable(as: GetNewsUseCase, env: [Environment.dev, Environment.prod])
class GetNewsUseCaseImpl extends GetNewsUseCase {
  final NewsRepository _newsRepository;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;

  GetNewsUseCaseImpl(
    this._newsRepository,
    this._getRegionSettingsUseCase,
  );

  @override
  Future<List<ApiNews>> run() async {
    final news = await _newsRepository.get();

    final region = await _getRegionSettingsUseCase.run();

    return news.where((item) {
      final isNotRegion = item.region == null;

      final regionValue = item.region?.name.toLowerCase();

      final isUserRegion = regionValue == region?.value;
      final isAllRegion = regionValue == appUserRegionAllValue;

      return isNotRegion || isUserRegion || isAllRegion;
    }).toList();
  }
}
