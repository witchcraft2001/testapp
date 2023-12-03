// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart';

@injectable
class RefreshAuthSettingsUseCase {
  final AuthProvider _authProvider;

  RefreshAuthSettingsUseCase(this._authProvider);

  void run() {
    _authProvider.init();
  }
}
