// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile/data/repositories/avatar_storage_repository.dart';
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/params/avatar_use_case_params.dart';
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart';

abstract class SetProfileAvatarUseCase
    implements AsyncParamfullUseCase<ApplicationFile, AvatarUseCaseParams> {}

@LazySingleton(
  as: SetProfileAvatarUseCase,
  env: [Environment.dev, Environment.prod],
)
class SetProfileAvatarUseCaseImpl extends SetProfileAvatarUseCase {
  final SettingsRepository _settingsRepository;
  final AvatarStorageRepository _avatarStorageRepository;

  SetProfileAvatarUseCaseImpl({
    required SettingsRepository settingsRepository,
    required AvatarStorageRepository avatarStorageRepository,
  })  : _settingsRepository = settingsRepository,
        _avatarStorageRepository = avatarStorageRepository;

  @override
  Future<ApplicationFile> call(AvatarUseCaseParams params) async {
    final ApplicationFile? newAvatar = await _avatarStorageRepository.selectAvatarFile();

    if (newAvatar != null && newAvatar.name != params.avatar.name) {
      await _avatarStorageRepository.deleteAvatarFileByFileName(params.avatar.name);
      await _settingsRepository.setUserProfileAvatar(newAvatar.name);

      return newAvatar;
    }

    return params.avatar;
  }
}
