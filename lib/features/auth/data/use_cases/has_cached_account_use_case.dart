// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart';

@injectable
class HasCachedAccountUseCase {
  final AuthProvider _authProvider;

  HasCachedAccountUseCase(this._authProvider);

  Future<bool> run() async => await _authProvider.auth.hasCachedAccountInformation;
}
