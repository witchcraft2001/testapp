// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile/data/repositories/avatar_storage_repository.dart';
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';
import 'package:terralinkapp/features/profile/domain/use_cases/get_profile_avatar_use_case.dart';
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart';

abstract class DeleteProfileAvatarUseCase implements AsyncParamlessUseCase<void> {}

@LazySingleton(
  as: DeleteProfileAvatarUseCase,
  env: [Environment.dev, Environment.prod],
)
class DeleteProfileAvatarUseCaseImpl extends DeleteProfileAvatarUseCase {
  final SettingsRepository _settingsRepository;
  final AvatarStorageRepository _avatarStorageRepository;
  final GetProfileAvatarUseCase _getProfileAvatarUseCase;

  DeleteProfileAvatarUseCaseImpl({
    required SettingsRepository settingsRepository,
    required AvatarStorageRepository avatarStorageRepository,
    required GetProfileAvatarUseCase getProfileAvatarUseCase,
  })  : _settingsRepository = settingsRepository,
        _avatarStorageRepository = avatarStorageRepository,
        _getProfileAvatarUseCase = getProfileAvatarUseCase;

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    _getProfileAvatarUseCase();
    final ApplicationFile avatar = await _getProfileAvatarUseCase();

    if (avatar.name.isNotEmpty &&
        avatar.fullPath.isNotEmpty &&
        await _settingsRepository.clearUserProfile()) {
      await _avatarStorageRepository.deleteAvatarFileByFileName(avatar.name);
    }
  }
}
