// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/application_file.dart';

part 'profile_cubit_state.freezed.dart';

@freezed
class ProfileCubitState with _$ProfileCubitState {
  const factory ProfileCubitState.loading() = _ProfileCubitStateLoading;

  const factory ProfileCubitState.ready(ProfileState data) = _ProfileCubitStateLoaded;
}

class ProfileState {
  final String name;
  final ApplicationFile avatar;

  const ProfileState({
    this.name = '',
    this.avatar = const ApplicationFile(name: '', fullPath: ''),
  });

  ProfileState copyWith({
    String? name,
    ApplicationFile? avatar,
  }) =>
      ProfileState(
        name: name ?? this.name,
        avatar: avatar ?? this.avatar,
      );
}
