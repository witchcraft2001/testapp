// Project imports:
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';

class ApiProfile extends ApiUser {
  final bool isOnboarding;

  ApiProfile({
    required super.id,
    required super.titleRu,
    required super.titleEn,
    required super.positionRu,
    required super.positionEn,
    required super.mobile,
    required super.email,
    required super.login,
    super.photo,
    required this.isOnboarding,
  });
}
