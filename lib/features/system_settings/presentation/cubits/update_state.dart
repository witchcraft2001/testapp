// Project imports:
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';

class UpdateState {
  final String? version;
  final List<String> versionInfo;
  final AppUserRegion? userRegion;

  const UpdateState({
    this.version,
    this.versionInfo = const [],
    this.userRegion,
  });
}
