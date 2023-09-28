// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/piked_file.dart';
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart';
import 'package:terralinkapp/domain/repositories/settings_repository.dart';

abstract class SetProfileAvatarUseCase {
  Future<String> run(String avatar);
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
  Future<String> run(String avatar) async {
    final PikedFile? newAvatar =
        await _avatarStorageRepository.selectAvatarFile();

    if (newAvatar != null && newAvatar.fullPath != avatar) {
      await _avatarStorageRepository.deleteAvatarFile(avatar);
      await _settingsRepository.setUserProfileAvatar(newAvatar.name);

      return newAvatar.fullPath;
    }

    return avatar;
  }
}
