// Dart imports:
import 'dart:async';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/ui/states/common_state_lite.dart';
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';
import 'package:terralinkapp/features/region/presentation/cubits/region_ready_data.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_region_settings_use_case.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/params/app_user_region_use_case_params.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/set_region_settings_use_case.dart';

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
class RegionCubit extends Cubit<CommonStateLite<RegionReadyData>> {
  final GetRegionSettingsUseCase _getRegionSettingsUseCase;
  final SetRegionSettingsUseCase _setRegionSettingsUseCase;

  RegionCubit(
    this._getRegionSettingsUseCase,
    this._setRegionSettingsUseCase,
  ) : super(const CommonStateLite.init());

  RegionReadyData _current = RegionReadyData();

  Future<void> init() async {
    final region = await _getRegionSettingsUseCase();

    if (region != null) _updateState(region);
  }

  Future<void> set(AppUserRegion? region) async {
    if (region != null) {
      await _setRegionSettingsUseCase(AppUserRegionUseCaseParams(region));

      _updateState(region);
    }
  }

  void _updateState(AppUserRegion region) {
    _current = _current.copyWith(region: region);

    emit(CommonStateLite.ready(_current));
  }
}
