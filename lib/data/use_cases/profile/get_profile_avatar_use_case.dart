// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/application_file.dart';
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart';
import 'package:terralinkapp/domain/repositories/settings_repository.dart';

abstract class GetProfileAvatarUseCase {
  Future<ApplicationFile> run();
}

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
  Future<ApplicationFile> run() async {
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
