// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/region/domain/models/app_user_region.dart';

class AppUserRegionUseCaseParams implements UseCaseParams {
  AppUserRegionUseCaseParams(this.userRegion);

  final AppUserRegion userRegion;
}
