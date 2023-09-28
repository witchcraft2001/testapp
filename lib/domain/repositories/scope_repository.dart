// Project imports:
import 'package:terralinkapp/domain/user.dart';

abstract class ScopeRepository {
  Future<void> setScopeByUser(User user);

  Future<void> reset();
}
