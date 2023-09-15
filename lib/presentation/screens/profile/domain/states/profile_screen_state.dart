// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/profile/domain/states/profile_state.dart';

part 'profile_screen_state.freezed.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState.loading() = ProfileScreenStateLoading;

  const factory ProfileScreenState.loaded(ProfileState data) = ProfileScreenStateLoaded;
}
