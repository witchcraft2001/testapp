// Project imports:
import 'package:terralinkapp/features/likes/common/domain/entities/api_likes_stat.dart';
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';

class ProfileReadyData {
  final String name, lastName, email;
  final String? position;
  final ApplicationFile avatar;

  const ProfileReadyData({
    this.name = '',
    this.lastName = '',
    this.email = '',
    this.avatar = const ApplicationFile(name: '', fullPath: ''),
    this.position,
  });

  ProfileReadyData copyWith({
    String? name,
    String? lastName,
    String? email,
    String? position,
    ApplicationFile? avatar,
    ApiLikesStat? likes,
  }) =>
      ProfileReadyData(
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        position: position ?? this.position,
        avatar: avatar ?? this.avatar,
      );
}
