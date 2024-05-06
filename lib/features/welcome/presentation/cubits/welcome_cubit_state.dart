// Package imports:

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
part 'welcome_cubit_state.freezed.dart';

@freezed
class WelcomeCubitState with _$WelcomeCubitState {
  const factory WelcomeCubitState.ready() = _Ready;
}
