// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/repositories/chats_repository.dart';
import 'package:terralinkapp/data/repositories/local/business_card_db_repository.dart';
import 'package:terralinkapp/data/repositories/local/documents_db_repository.dart';
import 'package:terralinkapp/data/repositories/local/settings_repository.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/domain/user.dart';

abstract class UserLogInUseCase {
  Future run(User user);
}

@LazySingleton(as: UserLogInUseCase, env: [Environment.dev, Environment.prod])
class UserLogInUseCaseImpl extends UserLogInUseCase {
  final UserService _userService;
  final ChatsRepository _chatsRepository;
  final SettingsRepository _settingsRepository;
  final BusinessCardDbRepository _businessCardDbRepository;
  final AppDocumentsDbRepository _appDocumentsDbRepository;

  UserLogInUseCaseImpl(
    this._chatsRepository,
    this._userService,
    this._settingsRepository,
    this._businessCardDbRepository,
    this._appDocumentsDbRepository,
  );

  @override
  Future run(User user) async {
    _userService.setUser(user);
    final lastUserId = await _settingsRepository.getString(SettingsRepositoryKeys.userId);

    if (lastUserId != null && lastUserId != user.email.toLowerCase()) {
      await _chatsRepository.clearHistory();
      await _businessCardDbRepository.deleteAll();
      await _appDocumentsDbRepository.deleteAll();
    }

    await _settingsRepository.setString(SettingsRepositoryKeys.userId, user.email.toLowerCase());
    await _chatsRepository.userLoggedIn();
  }
}
