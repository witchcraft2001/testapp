// Project imports:
import 'package:terralinkapp/features/users/data/dao/api_user_dao.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';

const String _photoUrlPath = 'static/user_images';

extension ApiUserDaoMapper on ApiUserDao {
  ApiUser toDomain([String? photoUrlPrefix]) => ApiUser(
        id: id,
        titleEn: titleEn,
        titleRu: titleRu,
        email: email,
        login: login,
        mobile: mobile,
        positionEn: positionEn,
        positionRu: positionRu,
        photo: photo != null && photo!.isNotEmpty ? '$photoUrlPrefix/$_photoUrlPath/$photo' : photo,
      );
}
