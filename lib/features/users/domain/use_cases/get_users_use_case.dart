// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/search_paged_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/users/data/repositories/users_repository.dart';
import 'package:terralinkapp/features/users/presentation/cubits/users_state.dart';

abstract class GetUsersUseCase
    implements AsyncParamfullUseCase<UsersReadyData?, SearchPagedUseCaseParams> {}

@Injectable(
  as: GetUsersUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetUsersUseCaseImpl extends GetUsersUseCase {
  final UsersRepository _usersRepository;

  GetUsersUseCaseImpl(
    this._usersRepository,
  );

  @override
  Future<UsersReadyData?> call(SearchPagedUseCaseParams params) {
    return _usersRepository.get(search: params.search, page: params.page);
  }
}
