// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/use_cases/settings/get_dark_mode_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/get_system_mode_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/set_dark_mode_settings_use_case.dart';
import 'package:terralinkapp/data/use_cases/settings/set_system_mode_settings_use_case.dart';
import 'package:terralinkapp/presentation/theme/domain/states/theme_cubit_state.dart';
import 'package:terralinkapp/presentation/theme/domain/states/theme_state.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
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
    final isDark = await _getDarkModeSettingsUseCase.run() ?? false;
    final isSystem = await _getSystemModeSettingsUseCase.run() ?? false;

    _updateState(isDark, isSystem);
  }

  Future<void> changeTheme(bool isDark) async {
    final isSystem = await _getSystemModeSettingsUseCase.run() ?? false;

    await _setDarkModeSettingsUseCase.run(isDark);

    _updateState(isDark, isSystem);
  }

  Future<void> changeSystemTheme(bool isSystem) async {
    final isDark = await _getDarkModeSettingsUseCase.run() ?? false;

    await _setSystemModeSettingsUseCase.run(isSystem);

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
