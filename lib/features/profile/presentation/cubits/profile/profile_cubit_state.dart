// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/likes/common/domain/entities/api_likes_stat.dart';
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';

part 'profile_cubit_state.freezed.dart';

@freezed
class ProfileCubitState with _$ProfileCubitState {
  const factory ProfileCubitState.loading() = _Loading;
  const factory ProfileCubitState.ready(ProfileState data) = _Ready;
}

class ProfileState {
  final String name, lastName, email;
  final ApplicationFile avatar;

  const ProfileState({
    this.name = '',
    this.lastName = '',
    this.email = '',
    this.avatar = const ApplicationFile(name: '', fullPath: ''),
  });

  ProfileState copyWith({
    String? name,
    String? lastName,
    String? email,
    ApplicationFile? avatar,
    ApiLikesStat? likes,
  }) =>
      ProfileState(
        name: name ?? this.name,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        avatar: avatar ?? this.avatar,
      );
}
