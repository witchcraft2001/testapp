// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/domain/models/app_user_region.dart';

part 'region_cubit_state.freezed.dart';

@freezed
class RegionCubitState with _$RegionCubitState {
  const factory RegionCubitState.init() = _RegionCubitStateInit;

  const factory RegionCubitState.ready(RegionState region) = _RegionCubitStateReady;
}

class RegionState {
  final AppUserRegion? region;

  RegionState({
    this.region,
  });

  RegionState copyWith({AppUserRegion? region}) => RegionState(
        region: region ?? this.region,
      );
}
