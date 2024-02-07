// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';

class ChatUseCaseParams implements UseCaseParams {
  ChatUseCaseParams({required this.chatId});

  final String chatId;
}
