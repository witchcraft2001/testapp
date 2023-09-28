// Project imports:
import 'package:terralinkapp/domain/entities/piked_file.dart';

abstract class AvatarStorageRepository {
  Future<PikedFile?> selectAvatarFile();

  Future<bool> deleteAvatarFile(String avatar);

  Future<String> getAvatarPathByName(String avatar);
}
