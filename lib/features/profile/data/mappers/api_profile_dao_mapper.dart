// Project imports:
import 'package:terralinkapp/features/profile/data/dao/api_profile_dao.dart';
import 'package:terralinkapp/features/profile/domain/entities/api_profile.dart';

const String _photoUrlPath = 'static/user_images';

extension ApiProfileDaoMapper on ApiProfileDao {
  ApiProfile toDomain([String? photoUrlPrefix]) => ApiProfile(
        id: id,
        isOnboarding: isOnboarding,
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
