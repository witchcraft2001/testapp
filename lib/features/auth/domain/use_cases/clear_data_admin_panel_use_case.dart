// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/greeting_cards/domain/use_cases/clear_cache_greeting_templates_use_case.dart';
import 'package:terralinkapp/features/likes/common/domain/use_cases/clear_cache_likes_use_case.dart';
import 'package:terralinkapp/features/news/domain/use_cases/clear_cache_news_use_case.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/clear_cache_profile_use_case.dart';

abstract class ClearDataAdminPanelUseCase implements AsyncParamlessUseCase<void> {}

@Injectable(
  as: ClearDataAdminPanelUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearDataAdminPanelUseCaseImpl extends ClearDataAdminPanelUseCase {
  final ClearCacheNewsUseCase _clearCacheNewsUseCase;
  final ClearCacheLikesUseCase _clearCacheLikesUseCase;
  final ClearCacheGreetingTemplatesUseCase _clearCacheGreetingTemplatesUseCase;
  final ClearCacheProfileUseCase _clearCacheProfileCase;

  ClearDataAdminPanelUseCaseImpl(
    this._clearCacheNewsUseCase,
    this._clearCacheLikesUseCase,
    this._clearCacheGreetingTemplatesUseCase,
    this._clearCacheProfileCase,
  );

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    await _clearCacheNewsUseCase();
    await _clearCacheLikesUseCase();

    _clearCacheGreetingTemplatesUseCase();
    _clearCacheProfileCase();
  }
}
