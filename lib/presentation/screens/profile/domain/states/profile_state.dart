// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:terralinkapp/domain/entities/application_file.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('') String name,
    @Default(ApplicationFile(name: '', fullPath: '')) ApplicationFile avatar,
  }) = _ProfileState;
}
