// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/notifications/services/local_notifications_service.dart';
import 'package:terralinkapp/core/repositories/scope_repository.dart';
import 'package:terralinkapp/core/services/user_service/user.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart';
import 'package:terralinkapp/features/settings/data/repositories/settings_repository.dart';
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/remove_not_actual_task_eas_attachments_use_case.dart';

abstract class UserLogInUseCase {
  Future<void> run(User user);
}

@Injectable(
  as: UserLogInUseCase,
  env: [Environment.dev, Environment.prod],
)
class UserLogInUseCaseImpl extends UserLogInUseCase {
  final UserService _userService;
  final ChatsRepository _chatsRepository;
  final SettingsRepository _settingsRepository;
  final BusinessCardRepository _businessCardRepository;
  final AppDocumentsRepository _appDocumentsRepository;
  final ScopeRepository _scopeRepository;
  final LocalNotificationsService _localNotificationsService;

  UserLogInUseCaseImpl({
    required UserService userService,
    required ChatsRepository chatsRepository,
    required SettingsRepository settingsRepository,
    required BusinessCardRepository businessCardRepository,
    required AppDocumentsRepository appDocumentsRepository,
    required RemoveNotActualTaskEasAttachmentsUseCase removeAllTaskEasAttachmentUseCase,
    required ScopeRepository scopeRepository,
    required LocalNotificationsService localNotificationsService,
  })  : _userService = userService,
        _chatsRepository = chatsRepository,
        _settingsRepository = settingsRepository,
        _businessCardRepository = businessCardRepository,
        _appDocumentsRepository = appDocumentsRepository,
        _scopeRepository = scopeRepository,
        _localNotificationsService = localNotificationsService;

  @override
  Future<void> run(User user) async {
    _userService.setUser(user);

    final lastUserId = await _settingsRepository.getUserId();

    if (lastUserId != null && lastUserId != user.email.toLowerCase()) {
      await _chatsRepository.clearHistory();
      await _businessCardRepository.deleteAll();
      await _appDocumentsRepository.deleteAll();
    }

    await _chatsRepository.userLoggedIn();

    await _settingsRepository.setUserId(user.email.toLowerCase());
    await _scopeRepository.setScopeByUser(user);

    await _localNotificationsService.init();
  }
}
