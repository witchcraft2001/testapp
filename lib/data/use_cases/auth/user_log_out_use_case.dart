// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart';
import 'package:terralinkapp/data/providers/auth_provider.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/domain/repositories/chats_repository.dart';
import 'package:terralinkapp/domain/repositories/scope_repository.dart';

abstract class UserLogOutUseCase {
  Future<void> run();
}

@Injectable(as: UserLogOutUseCase, env: [Environment.dev, Environment.prod])
class UserLogOutUseCaseImpl extends UserLogOutUseCase {
  final AuthProvider _authProvider;
  final UserService _userService;
  final ChatsRepository _chatsRepository;
  final TasksEASCachedDataSource _cachedTasksRepository;
  final ScopeRepository _scopeRepository;

  UserLogOutUseCaseImpl(
    this._chatsRepository,
    this._cachedTasksRepository,
    this._userService,
    this._authProvider,
    this._scopeRepository,
  );

  @override
  Future<void> run() async {
    await _authProvider.auth.logout();
    _userService.setUser(null);
    await _chatsRepository.userLoggedOut();
    _cachedTasksRepository.clearCache();
    await _scopeRepository.reset();
  }
}
