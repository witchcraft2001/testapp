// Dart imports:
import 'dart:io';

// Package imports:
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/local/settings_repository.dart';
import 'package:terralinkapp/data/services/log_service.dart';

abstract class SetProfileAvatarUseCase {
  Future<String> run(String avatar);
}

@LazySingleton(as: SetProfileAvatarUseCase, env: [Environment.dev, Environment.prod])
class SetProfileAvatarUseCaseImpl extends SetProfileAvatarUseCase {
  final SettingsRepository _settingsRepository;
  final LogService _logService;

  SetProfileAvatarUseCaseImpl(this._settingsRepository, this._logService);

  @override
  Future<String> run(String avatar) async {
    final ImagePicker picker = ImagePicker();

    final file = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (file == null) return avatar;

    try {
      final directoryApp = await getApplicationDocumentsDirectory();

      // Если ранее был установлен аватар, то удаляем его
      if (avatar.isNotEmpty) await _removePrevious(directoryApp.path, avatar);

      // Сохраняем и устанавливаем новый
      final path = '${directoryApp.path}/${file.name}';

      await File(file.path).copy(path);
      await _settingsRepository.setString(SettingsRepositoryKeys.avatar, file.name);

      return path;
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      return '';
    }
  }

  Future<void> _removePrevious(String directoryPath, String avatarPath) async {
    final file = File('$directoryPath$avatarPath');

    if (await file.exists()) {
      await file.delete();
    }
  }
}
