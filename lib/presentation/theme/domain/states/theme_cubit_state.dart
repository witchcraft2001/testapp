// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/presentation/theme/domain/states/theme_state.dart';

part 'theme_cubit_state.freezed.dart';

@freezed
class ThemeCubitState with _$ThemeCubitState {
  const factory ThemeCubitState.init() = ThemeCubitStateInit;

  const factory ThemeCubitState.ready(ThemeState data) = ThemeCubitStateReady;
}
