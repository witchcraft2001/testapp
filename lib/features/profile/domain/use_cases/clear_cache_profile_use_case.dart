// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile/data/repositories/profile_repository.dart';

abstract class ClearCacheProfileUseCase implements ParamlessUseCase<void> {}

@LazySingleton(
  as: ClearCacheProfileUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheProfileUseCaseImpl extends ClearCacheProfileUseCase {
  final ProfileRepository _profileRepository;

  ClearCacheProfileUseCaseImpl(this._profileRepository);

  @override
  void call([UseCaseParams params = const NoParams()]) {
    _profileRepository.clearCache();
  }
}
