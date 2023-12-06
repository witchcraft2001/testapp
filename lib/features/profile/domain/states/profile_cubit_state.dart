// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/features/profile/domain/entities/application_file.dart';

part 'profile_cubit_state.freezed.dart';

@freezed
class ProfileCubitState with _$ProfileCubitState {
  const factory ProfileCubitState.loading() = _ProfileCubitStateLoading;

  const factory ProfileCubitState.ready(ProfileState data) = _ProfileCubitStateLoaded;
}

class ProfileState {
  final String name, email;
  final ApplicationFile avatar;

  const ProfileState({
    this.name = '',
    this.email = '',
    this.avatar = const ApplicationFile(name: '', fullPath: ''),
  });

  ProfileState copyWith({
    String? name,
    String? email,
    ApplicationFile? avatar,
  }) =>
      ProfileState(
        name: name ?? this.name,
        email: email ?? this.email,
        avatar: avatar ?? this.avatar,
      );
}
