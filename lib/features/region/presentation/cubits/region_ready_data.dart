// Project imports:
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';

class RegionReadyData {
  final AppUserRegion? region;

  RegionReadyData({
    this.region,
  });

  RegionReadyData copyWith({AppUserRegion? region}) => RegionReadyData(
        region: region ?? this.region,
      );
}
