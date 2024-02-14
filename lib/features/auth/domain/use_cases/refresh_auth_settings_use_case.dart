// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart';

@injectable
class RefreshAuthSettingsUseCase implements AsyncParamlessUseCase<void> {
  final AuthProvider _authProvider;

  RefreshAuthSettingsUseCase(this._authProvider);

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    _authProvider.init();
  }
}
