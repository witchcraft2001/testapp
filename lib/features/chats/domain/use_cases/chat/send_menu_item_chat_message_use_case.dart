// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/menu_item_use_case_params.dart';

abstract class SendMenuItemChatMessageUseCase
    implements AsyncParamfullUseCase<void, MenuItemUseCaseParams> {}

@LazySingleton(
  as: SendMenuItemChatMessageUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendMenuItemChatMessageUseCaseImpl extends SendMenuItemChatMessageUseCase {
  final ChatsRepository _chatsRepository;

  SendMenuItemChatMessageUseCaseImpl(this._chatsRepository);

  @override
  Future<void> call(MenuItemUseCaseParams params) async {
    await _chatsRepository.sendMenuItem(params.chatId, params.menuId, params.value);
  }
}
