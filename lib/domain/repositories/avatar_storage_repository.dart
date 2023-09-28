// Project imports:
import 'package:terralinkapp/domain/entities/application_file.dart';

abstract class AvatarStorageRepository {
  Future<ApplicationFile?> selectAvatarFile();

  Future<bool> deleteAvatarFileByFileName(String avatar);

  Future<String> getAvatarPathByName(String avatar);
}
