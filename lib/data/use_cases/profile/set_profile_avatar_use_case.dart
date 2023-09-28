// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/application_file.dart';
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart';
import 'package:terralinkapp/domain/repositories/settings_repository.dart';

abstract class SetProfileAvatarUseCase {
  Future<ApplicationFile> run(ApplicationFile avatar);
}

@LazySingleton(as: SetProfileAvatarUseCase, env: [Environment.dev, Environment.prod])
class SetProfileAvatarUseCaseImpl extends SetProfileAvatarUseCase {
  final SettingsRepository _settingsRepository;
  final AvatarStorageRepository _avatarStorageRepository;

  SetProfileAvatarUseCaseImpl({
    required SettingsRepository settingsRepository,
    required AvatarStorageRepository avatarStorageRepository,
  })  : _settingsRepository = settingsRepository,
        _avatarStorageRepository = avatarStorageRepository;

  @override
  Future<ApplicationFile> run(ApplicationFile avatar) async {
    final ApplicationFile? newAvatar =
        await _avatarStorageRepository.selectAvatarFile();

    if (newAvatar != null && newAvatar.name != avatar.name) {
      await _avatarStorageRepository.deleteAvatarFileByFileName(avatar.name);
      await _settingsRepository.setUserProfileAvatar(newAvatar.name);

      return newAvatar;
    }

    return avatar;
  }
}
