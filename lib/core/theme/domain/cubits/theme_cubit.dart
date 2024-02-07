// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/theme/domain/states/theme_cubit_state.dart';
import 'package:terralinkapp/core/theme/domain/states/theme_state.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_dark_mode_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_system_mode_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/bool_use_case_params.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/set_dark_mode_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/set_system_mode_settings_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class ThemeCubit extends Cubit<ThemeCubitState> {
  final GetDarkModeSettingsUseCase _getDarkModeSettingsUseCase;
  final SetDarkModeSettingsUseCase _setDarkModeSettingsUseCase;
  final GetSystemModeSettingsUseCase _getSystemModeSettingsUseCase;
  final SetSystemModeSettingsUseCase _setSystemModeSettingsUseCase;

  ThemeState _themes = const ThemeState();

  ThemeCubit(
    this._getDarkModeSettingsUseCase,
    this._setDarkModeSettingsUseCase,
    this._getSystemModeSettingsUseCase,
    this._setSystemModeSettingsUseCase,
  ) : super(const ThemeCubitState.init());

  Future<void> init() async {
    final isDark = await _getDarkModeSettingsUseCase() ?? false;
    final isSystem = await _getSystemModeSettingsUseCase() ?? false;

    _updateState(isDark, isSystem);
  }

  Future<void> changeTheme(bool isDark) async {
    final isSystem = await _getSystemModeSettingsUseCase() ?? false;

    await _setDarkModeSettingsUseCase(DarkModeStatusUseCaseParams(isDark));

    _updateState(isDark, isSystem);
  }

  Future<void> changeSystemTheme(bool isSystem) async {
    final isDark = await _getDarkModeSettingsUseCase() ?? false;

    await _setSystemModeSettingsUseCase(SystemModeStatusUseCaseParams(isSystem));

    _updateState(isDark, isSystem);
  }

  void _updateState(bool isDark, bool isSystem) {
    _themes = _themes.copyWith(
      isDark: isDark,
      isSystem: isSystem,
    );

    emit(ThemeCubitState.ready(_themes));
  }
}
