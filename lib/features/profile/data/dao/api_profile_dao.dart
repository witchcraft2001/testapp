// Project imports:
import 'package:terralinkapp/features/users/data/dao/api_user_dao.dart';

class ApiProfileDao extends ApiUserDao {
  final bool isOnboarding;

  const ApiProfileDao({
    required super.id,
    required super.titleRu,
    required super.titleEn,
    required super.positionRu,
    required super.positionEn,
    required super.mobile,
    required super.email,
    required super.login,
    required this.isOnboarding,
  });

  ApiProfileDao.fromJson(Map<String, dynamic> json)
      : isOnboarding = json['adaptation'],
        super.fromJson(json);
}
