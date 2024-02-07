// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile/data/repositories/avatar_storage_repository.dart';
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart';

abstract class GetProfileAvatarUseCase implements AsyncParamlessUseCase<ApplicationFile> {}

@LazySingleton(
  as: GetProfileAvatarUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetProfileAvatarUseCaseImpl extends GetProfileAvatarUseCase {
  final SettingsRepository _settingsRepository;
  final AvatarStorageRepository _avatarStorageRepository;

  GetProfileAvatarUseCaseImpl({
    required SettingsRepository settingsRepository,
    required AvatarStorageRepository avatarStorageRepository,
  })  : _settingsRepository = settingsRepository,
        _avatarStorageRepository = avatarStorageRepository;

  @override
  Future<ApplicationFile> call([UseCaseParams params = const NoParams()]) async {
    final String avatarFileName = await _settingsRepository.getUserProfileAvatar();

    if (avatarFileName.isEmpty) {
      return const ApplicationFile(fullPath: '', name: '');
    }

    return ApplicationFile(
      fullPath: await _avatarStorageRepository.getAvatarPathByName(avatarFileName),
      name: avatarFileName,
    );
  }
}
