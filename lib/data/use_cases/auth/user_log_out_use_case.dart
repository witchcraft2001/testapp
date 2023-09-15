// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/providers/auth_provider.dart';
import 'package:terralinkapp/data/repositories/chats_repository.dart';
import 'package:terralinkapp/data/repositories/local/cached_tasks_repository.dart';
import 'package:terralinkapp/data/services/user_service.dart';

abstract class UserLogOutUseCase {
  Future run();
}

@LazySingleton(as: UserLogOutUseCase, env: [Environment.dev, Environment.prod])
class UserLogOutUseCaseImpl extends UserLogOutUseCase {
  final AuthProvider _authProvider;
  final UserService _userService;
  final ChatsRepository _chatsRepository;
  final CachedTasksRepository _cachedTasksRepository;

  UserLogOutUseCaseImpl(
    this._chatsRepository,
    this._cachedTasksRepository,
    this._userService,
    this._authProvider,
  );

  @override
  Future run() async {
    await _authProvider.auth.logout();
    _userService.setUser(null);
    await _chatsRepository.userLoggedOut();
    _cachedTasksRepository.clearCacheTasks();
  }
}
