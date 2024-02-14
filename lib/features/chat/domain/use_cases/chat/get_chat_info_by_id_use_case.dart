// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/string_id_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chat/domain/entities/chat_info.dart';

abstract class GetChatInfoByIdUseCase
    implements AsyncParamfullUseCase<ChatInfo, StringIdUseCaseParams> {}

@LazySingleton(
  as: GetChatInfoByIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetChatInfoByIdUseCaseImpl extends GetChatInfoByIdUseCase {
  final ChatsRepository _chatsRepository;

  GetChatInfoByIdUseCaseImpl(this._chatsRepository);

  @override
  Future<ChatInfo> call(StringIdUseCaseParams params) async {
    final ChatInfo result = await _chatsRepository.getChatInfo(params.id);

    return result;
  }
}
