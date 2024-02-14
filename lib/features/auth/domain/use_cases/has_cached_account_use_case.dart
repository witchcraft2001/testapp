// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart';

@injectable
class HasCachedAccountUseCase implements AsyncParamlessUseCase<bool> {
  final AuthProvider _authProvider;

  HasCachedAccountUseCase(this._authProvider);

  @override
  Future<bool> call([UseCaseParams params = const NoParams()]) async {
    return _authProvider.auth.hasCachedAccountInformation;
  }
}
