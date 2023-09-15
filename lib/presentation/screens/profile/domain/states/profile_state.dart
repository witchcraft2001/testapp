// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('') String name,
    @Default('') String avatar,
  }) = _ProfileState;
}
