// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/repositories/scope_repository.dart';
import 'package:terralinkapp/core/services/user_service/user.dart';
import 'package:terralinkapp/injection.config.dart';
import 'package:terralinkapp/injection.dart';

class Scopes {
  const Scopes._();

  static const String authScope = 'authScope';
  static const String mockScope = 'mockScope';
  static const String baseScope = 'baseScope';
}

@LazySingleton(
  as: ScopeRepository,
  env: [Environment.dev, Environment.prod],
)
class DiScopeRepository implements ScopeRepository {
  static const List<String> _emailForMock = ['test_user1@terralink-global.com'];

  static const List<String> _usedScopes = [Scopes.authScope, Scopes.mockScope];

  @override
  Future<void> setScopeByUser(User user) async {
    final String? currentScope = getIt.currentScopeName;
    final String newScopeName = _getScopeNameByUser(user);

    if (currentScope != newScopeName) {
      _setScope(newScopeName);
    }
  }

  void _setScope(String name) {
    switch (name) {
      case Scopes.authScope:
        getIt.initAuthScopeScope();
      case Scopes.mockScope:
        getIt.initMockScopeScope();
    }
    debugPrint('set scope for di: $name');
  }

  String _getScopeNameByUser(User user) {
    if (_isMockUser(user)) {
      return Scopes.mockScope;
    }

    return Scopes.authScope;
  }

  bool _isMockUser(User user) {
    return _emailForMock.any(
      (email) => email.toLowerCase() == user.email.toLowerCase(),
    );
  }

  @override
  Future<void> reset() async {
    if (_usedScopes.contains(getIt.currentScopeName)) {
      await getIt.dropScope(getIt.currentScopeName ?? '');
    }
  }
}
