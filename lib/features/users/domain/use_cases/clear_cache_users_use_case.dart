// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/users/data/repositories/users_repository.dart';

abstract class ClearCacheUsersUseCase implements AsyncParamlessUseCase<void> {}

@Injectable(
  as: ClearCacheUsersUseCase,
  env: [Environment.dev, Environment.prod],
)
class ClearCacheUsersUseCaseImpl extends ClearCacheUsersUseCase {
  final UsersRepository _usersRepository;

  ClearCacheUsersUseCaseImpl(this._usersRepository);

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    _usersRepository.clearCache();
  }
}
