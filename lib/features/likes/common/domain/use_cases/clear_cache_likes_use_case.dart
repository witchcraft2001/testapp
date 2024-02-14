// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/likes/common/data/repositories/likes_repository.dart';

abstract class ClearCacheLikesUseCase implements AsyncParamlessUseCase<void> {}

@Injectable(
  as: ClearCacheLikesUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheLikesUseCaseImpl extends ClearCacheLikesUseCase {
  final LikesRepository _likesRepository;

  ClearCacheLikesUseCaseImpl(this._likesRepository);

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    await _likesRepository.clearCache();
  }
}
