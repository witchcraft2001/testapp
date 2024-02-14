// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/likes/common/data/repositories/likes_repository.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_likes_stat.dart';

abstract class GetLikesStatUseCase implements AsyncParamlessUseCase<ApiLikesStat> {}

@LazySingleton(
  as: GetLikesStatUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetLikesStatUseCaseImpl extends GetLikesStatUseCase {
  final LikesRepository _repository;

  GetLikesStatUseCaseImpl(this._repository);

  @override
  Future<ApiLikesStat> call([UseCaseParams params = const NoParams()]) async {
    final stat = await _repository.getStat();

    return stat;
  }
}
