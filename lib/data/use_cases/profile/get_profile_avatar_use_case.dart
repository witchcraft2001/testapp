// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/settings_repository.dart';

abstract class GetProfileAvatarUseCase {
  Future<String> run();
}

@LazySingleton(as: GetProfileAvatarUseCase, env: [Environment.dev, Environment.prod])
class GetProfileAvatarUseCaseImpl extends GetProfileAvatarUseCase {
  final SettingsRepository _settingsRepository;

  GetProfileAvatarUseCaseImpl(this._settingsRepository);

  @override
  Future<String> run() async {
    final avatarPath = await _settingsRepository.getString(
      SettingsRepositoryKeys.avatar,
    );

    if (avatarPath == null) return '';

    final directoryApp = await getApplicationDocumentsDirectory();

    return '${directoryApp.path}/$avatarPath';
  }
}
