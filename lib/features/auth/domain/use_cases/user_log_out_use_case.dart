// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/repositories/scope_repository.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/greeting_cards/data/data_sources/greeting_cards_cached_data_source.dart';
import 'package:terralinkapp/features/news/data/data_sources/news_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/sbs/data/data_sources/tasks_sbs_cached_data_source.dart';
import 'package:terralinkapp/features/tasks/vacations/data/data_sources/tasks_vacation_cached_data_source.dart';

abstract class UserLogOutUseCase implements AsyncParamlessUseCase<void> {}

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
  final GreetingCardsCachedDataSource _cachedGreetingCardsRepository;
  final ScopeRepository _scopeRepository;

  UserLogOutUseCaseImpl(
    this._chatsRepository,
    this._cachedNewsRepository,
    this._cachedTasksEasRepository,
    this._cachedTasksSbsRepository,
    this._cachedTasksVacationRepository,
    this._cachedGreetingCardsRepository,
    this._userService,
    this._authProvider,
    this._scopeRepository,
  );

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    await _authProvider.auth.logout();
    _userService.setUser(null);
    await _chatsRepository.userLoggedOut();

    _cachedNewsRepository.clearCache();
    _cachedTasksEasRepository.clearCache();
    _cachedTasksSbsRepository.clearCacheWeekly();
    _cachedTasksSbsRepository.clearCacheLate();
    _cachedTasksVacationRepository.clearCache();
    _cachedGreetingCardsRepository.clearCache();

    await _scopeRepository.reset();
  }
}
