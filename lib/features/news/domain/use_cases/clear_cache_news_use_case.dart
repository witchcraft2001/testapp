// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/news/data/repositories/news_repository.dart';

abstract class ClearCacheNewsUseCase implements AsyncParamlessUseCase<void> {}

@Injectable(
  as: ClearCacheNewsUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheNewsUseCaseImpl extends ClearCacheNewsUseCase {
  final NewsRepository _newsRepository;

  ClearCacheNewsUseCaseImpl(this._newsRepository);

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    _newsRepository.clearCache();
  }
}
