// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';
import 'package:terralinkapp/features/region/domain/states/region_cubit_state.dart';
import 'package:terralinkapp/features/settings/data/use_cases/get_region_settings_use_case.dart';
import 'package:terralinkapp/features/settings/data/use_cases/set_region_settings_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class RegionCubit extends Cubit<RegionCubitState> {
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;
  final SetRegionSettingsUseCase _setRegionSettingsUseCase;

  RegionCubit(
    this._getRegionSettingsUseCase,
    this._setRegionSettingsUseCase,
  ) : super(const RegionCubitState.init());

  RegionState _current = RegionState();

  Future<void> init() async {
    final region = await _getRegionSettingsUseCase.run();

    if (region != null) _updateState(region);
  }

  Future<void> set(AppUserRegion? region) async {
    if (region != null) {
      await _setRegionSettingsUseCase.run(region);

      _updateState(region);
    }
  }

  void _updateState(AppUserRegion region) {
    _current = _current.copyWith(region: region);

    emit(RegionCubitState.ready(_current));
  }
}
