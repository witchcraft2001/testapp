// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/cache/news_cached_data_source.dart';
import 'package:terralinkapp/data/data_sources/cache/tasks_eas_cached_data_source.dart';
import 'package:terralinkapp/data/data_sources/cache/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/data/data_sources/cache/tasks_vacation_cached_data_source.dart';
import 'package:terralinkapp/data/providers/auth_provider.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/domain/repositories/chats_repository.dart';
import 'package:terralinkapp/domain/repositories/scope_repository.dart';

abstract class UserLogOutUseCase {
  Future<void> run();
}

@Injectable(
  as: UserLogOutUseCase,
  env: [Environment.dev, Environment.prod],
)
class UserLogOutUseCaseImpl extends UserLogOutUseCase {
  final AuthProvider _authProvider;
  final UserService _userService;
  final ChatsRepository _chatsRepository;
  final NewsCachedDataSource _cachedNewsRepository;
  final TasksEasCachedDataSource _cachedTasksEasRepository;
  final TasksSbsCachedDataSource _cachedTasksSbsRepository;
  final TasksVacationCachedDataSource _cachedTasksVacationRepository;
  final ScopeRepository _scopeRepository;

  UserLogOutUseCaseImpl(
    this._chatsRepository,
    this._cachedNewsRepository,
    this._cachedTasksEasRepository,
    this._cachedTasksSbsRepository,
    this._cachedTasksVacationRepository,
    this._userService,
    this._authProvider,
    this._scopeRepository,
  );

  @override
  Future<void> run() async {
    await _authProvider.auth.logout();
    _userService.setUser(null);
    await _chatsRepository.userLoggedOut();

    _cachedNewsRepository.clearCache();
    _cachedTasksEasRepository.clearCache();
    _cachedTasksSbsRepository.clearCacheWeekly();
    _cachedTasksSbsRepository.clearCacheLate();
    _cachedTasksVacationRepository.clearCache();

    await _scopeRepository.reset();
  }
}
