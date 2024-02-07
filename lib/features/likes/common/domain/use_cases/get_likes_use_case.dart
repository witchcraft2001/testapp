// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/likes/common/data/repositories/likes_repository.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_like.dart';

abstract class GetLikesUseCase implements AsyncParamlessUseCase<List<ApiLike>> {}

@Injectable(
  as: GetLikesUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetLikesUseCaseImpl extends GetLikesUseCase {
  final LikesRepository _likesRepository;

  GetLikesUseCaseImpl(
    this._likesRepository,
  );

  @override
  Future<List<ApiLike>> call([UseCaseParams params = const NoParams()]) async {
    final likes = await _likesRepository.getMy();

    return likes;
  }
}
