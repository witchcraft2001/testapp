// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/domain/user.dart';

abstract class UserService {
  User? getUser();

  void setUser(User? user);
}

@LazySingleton(as: UserService, env: [Environment.dev, Environment.prod])
class UserServiceImpl extends UserService {
  User? _user;

  @override
  User? getUser() => _user;

  @override
  void setUser(User? user) {
    _user = user;
  }
}
