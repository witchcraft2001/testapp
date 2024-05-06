// Package imports:
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';

abstract class GetAppInfoUseCase implements AsyncParamlessUseCase<PackageInfo> {}

@Injectable(
  as: GetAppInfoUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetAppInfoUseCaseImpl extends GetAppInfoUseCase {
  GetAppInfoUseCaseImpl();

  @override
  Future<PackageInfo> call([UseCaseParams params = const NoParams()]) async {
    final packageInfo = await PackageInfo.fromPlatform();

    return packageInfo;
  }
}
