// Project imports:
import 'package:terralinkapp/core/services/user_service/user.dart';

abstract class ScopeRepository {
  Future<void> setScopeByUser(User user);

  Future<void> reset();
}
