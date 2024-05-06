// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/theme/domain/cubits/theme_cubit.dart';
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/logout_user_use_case.dart';
import 'package:terralinkapp/features/region/presentation/cubits/region_cubit.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_billing_notification_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_dark_mode_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_system_mode_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/bool_use_case_params.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/set_billing_notification_settings_use_case.dart';
import 'package:terralinkapp/features/settings/presentaion/cubits/settings_ready_data.dart';

@injectable
class SettingsCubit extends Cubit<CommonStateLite<SettingsReadyData>> {
  final GetBillingNotificationSettingsUseCase _getBillingNotificationSettingsUseCase;
  final GetDarkModeSettingsUseCase _getDarkModeSettingsUseCase;
  final GetSystemModeSettingsUseCase _getSystemModeSettingsUseCase;
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;
  final LogoutUserUseCase _userLogOutUseCase;
  final SetBillingNotificationSettingsUseCase _setBillingNotificationSettingsUseCase;

  final ThemeCubit _themeCubit;
  final RegionCubit _regionCubit;

  late StreamSubscription _themeSubscription;
  late StreamSubscription _regionSubscription;

  SettingsReadyData _current = const SettingsReadyData();

  SettingsCubit(
    this._getBillingNotificationSettingsUseCase,
    this._getDarkModeSettingsUseCase,
    this._getSystemModeSettingsUseCase,
    this._getRegionSettingsUseCase,
    this._userLogOutUseCase,
    this._setBillingNotificationSettingsUseCase,
    this._themeCubit,
    this._regionCubit,
  ) : super(const CommonStateLite.init()) {
    _themeSubscription = _themeCubit.stream.listen((state) {
      state.whenOrNull(ready: (data) {
        emit(CommonStateLite.ready(_current.copyWith(
          isDarkTheme: data.isDark,
          isSystemTheme: data.isSystem,
        )));
      });
    });

    _regionSubscription = _regionCubit.stream.listen((state) {
      state.whenOrNull(ready: (data) {
        emit(CommonStateLite.ready(_current.copyWith(
          userRegion: data.region,
        )));
      });
    });
  }

  Future<void> init() async {
    emit(const CommonStateLite.init());

    final isDarkTheme = await _getDarkModeSettingsUseCase();
    final isSystemTheme = await _getSystemModeSettingsUseCase();
    final isBillingNotification = await _getBillingNotificationSettingsUseCase();
    final userRegion = await _getRegionSettingsUseCase();

    _current = _current.copyWith(
      isDarkTheme: isDarkTheme ?? _current.isDarkTheme,
      isSystemTheme: isSystemTheme ?? _current.isSystemTheme,
      isBillingNotification: isBillingNotification ?? _current.isBillingNotification,
      userRegion: userRegion ?? _current.userRegion,
    );

    emit(CommonStateLite.ready(_current));
  }

  Future<void> billing(bool isBilling) async {
    await _setBillingNotificationSettingsUseCase(BillingNotificationStatusUseCaseParams(isBilling));

    _current = _current.copyWith(
      isBillingNotification: isBilling,
    );

    emit(CommonStateLite.ready(_current));
  }

  Future logout() async => await _userLogOutUseCase();

  @override
  Future<void> close() async {
    _themeSubscription.cancel();
    _regionSubscription.cancel();
    super.close();
  }
}
