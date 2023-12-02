// Dart imports:
import 'dart:io';

// Package imports:
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';

abstract class FileStorageDataSource {
  Future<ApplicationFile?> selectImageInGallery();

  Future<String> applicationDirectory();

  Future<bool> deleteFileInApplicationDirectory(String fileName);
}

@LazySingleton(
  as: FileStorageDataSource,
  env: [Environment.dev, Environment.prod],
)
class FileStorageDataSourceImpl extends FileStorageDataSource {
  final LogService _logService;

  FileStorageDataSourceImpl({
    required LogService logService,
  }) : _logService = logService;

  @override
  Future<ApplicationFile?> selectImageInGallery() async {
    final ImagePicker picker = ImagePicker();

    final file = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (file == null) return null;

    try {
      final String directoryPath = await applicationDirectory();
      final String fileName = file.name;
      // Копируем выбранный файл в дерикторию приложения, если такой аватар существует, то перезаписываем;
      final String path = '$directoryPath/$fileName';

      await File(file.path).copy(path);

      return ApplicationFile(fullPath: path, name: fileName);
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      return null;
    }
  }

  @override
  Future<bool> deleteFileInApplicationDirectory(String fileName) async {
    try {
      // Если ранее был установлен аватар, то удаляем его
      if (fileName.isNotEmpty) {
        final String directory = await applicationDirectory();

        return _removePrevious(fileName: fileName, directory: directory);
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
    }

    return false;
  }

  Future<bool> _removePrevious({required String fileName, required String directory}) async {
    final String fullPath = '$directory/$fileName';
    final File file = File(fullPath);

    if (await file.exists()) {
      await file.delete();

      return true;
    }

    return false;
  }

  @override
  Future<String> applicationDirectory() async {
    final Directory directoryApp = await getApplicationDocumentsDirectory();

    return directoryApp.path;
  }
}
