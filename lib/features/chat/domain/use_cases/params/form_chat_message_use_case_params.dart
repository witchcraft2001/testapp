// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/chat/domain/entities/form_message.dart';

class FormChatMessageUseCaseParams implements UseCaseParams {
  FormChatMessageUseCaseParams({
    required this.chatId,
    required this.form,
    required this.formValues,
    required this.action,
  });

  final String chatId;
  final FormMessage form;
  final Map<String, String> formValues;
  final String action;
}
