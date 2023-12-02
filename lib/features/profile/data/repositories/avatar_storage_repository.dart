// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/profile/data/data_sources/file_storage_data_source.dart';
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';

abstract class AvatarStorageRepository {
  Future<ApplicationFile?> selectAvatarFile();

  Future<bool> deleteAvatarFileByFileName(String avatar);

  Future<String> getAvatarPathByName(String avatar);
}

@LazySingleton(
  as: AvatarStorageRepository,
  env: [Environment.dev, Environment.prod],
)
class AvatarStorageRepositoryImpl implements AvatarStorageRepository {
  final FileStorageDataSource _dataSource;

  AvatarStorageRepositoryImpl({required FileStorageDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<bool> deleteAvatarFileByFileName(String avatar) {
    return _dataSource.deleteFileInApplicationDirectory(avatar);
  }

  @override
  Future<String> getAvatarPathByName(String avatar) async {
    return '${await _dataSource.applicationDirectory()}/$avatar';
  }

  @override
  Future<ApplicationFile?> selectAvatarFile() {
    return _dataSource.selectImageInGallery();
  }
}
