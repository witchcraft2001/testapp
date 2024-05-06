// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile/data/repositories/profile_repository.dart';
import 'package:terralinkapp/features/profile/domain/entities/api_profile.dart';

abstract class GetProfileUseCase implements AsyncParamlessUseCase<ApiProfile?> {}

@Injectable(
  as: GetProfileUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetProfileUseCaseImpl extends GetProfileUseCase {
  final ProfileRepository _profileRepository;

  GetProfileUseCaseImpl(
    this._profileRepository,
  );

  @override
  Future<ApiProfile?> call([UseCaseParams params = const NoParams()]) async {
    final profile = await _profileRepository.get();

    return profile;
  }
}
