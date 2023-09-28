// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/file/file_storage_data_source.dart';
import 'package:terralinkapp/domain/entities/piked_file.dart';
import 'package:terralinkapp/domain/repositories/avatar_storage_repository.dart';

@LazySingleton(as: AvatarStorageRepository, env: [Environment.dev, Environment.prod])
class AvatarStorageRepositoryImpl implements AvatarStorageRepository {
  final FileStorageDataSource _dataSource;

  AvatarStorageRepositoryImpl({required FileStorageDataSource dataSource})
      : _dataSource = dataSource;

  @override
  Future<bool> deleteAvatarFile(String avatar) {
    return _dataSource.deleteFileInApplicationDirectory(avatar);
  }

  @override
  Future<String> getAvatarPathByName(String avatar) async {
    return '${_dataSource.applicationDirectory()}/$avatar';
  }

  @override
  Future<PikedFile?> selectAvatarFile() {
    return _dataSource.selectImageInGallery();
  }
}
