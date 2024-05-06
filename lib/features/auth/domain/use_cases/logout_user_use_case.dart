// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/repositories/scope_repository.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/auth/data/providers/auth_provider.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/clear_data_admin_panel_use_case.dart';
import 'package:terralinkapp/features/auth/domain/use_cases/clear_data_internal_systems_use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';

abstract class LogoutUserUseCase implements AsyncParamlessUseCase<void> {}

@Injectable(
  as: LogoutUserUseCase,
  env: [Environment.dev, Environment.prod],
)
class LogoutUserUseCaseImpl extends LogoutUserUseCase {
  final AuthProvider _authProvider;
  final UserService _userService;
  final ChatsRepository _chatsRepository;
  final ClearDataAdminPanelUseCase _clearDataAdminPanelUseCase;
  final ClearDataInternalSystemsUseCase _clearDataInternalSystemsUseCase;
  final ScopeRepository _scopeRepository;

  LogoutUserUseCaseImpl(
    this._chatsRepository,
    this._userService,
    this._authProvider,
    this._clearDataAdminPanelUseCase,
    this._clearDataInternalSystemsUseCase,
    this._scopeRepository,
  );

  @override
  Future<void> call([UseCaseParams params = const NoParams()]) async {
    await _authProvider.auth.logout();
    _userService.setUser(null);
    await _chatsRepository.logoutUser();

    await _clearDataAdminPanelUseCase();
    _clearDataInternalSystemsUseCase();

    await _scopeRepository.reset();
  }
}
