// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/iterable_extensions.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/chats/data/entities/requests/form_field_request.dart';
import 'package:terralinkapp/features/chats/data/entities/requests/form_request.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chats/domain/entities/checkboxes_form_field_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/date_form_field_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/select_form_field_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/text_form_field_message.dart';
import 'package:terralinkapp/features/chats/domain/use_cases/params/form_chat_message_use_case_params.dart';

abstract class SendFormChatMessageUseCase
    implements AsyncParamfullUseCase<void, FormChatMessageUseCaseParams> {}

@LazySingleton(
  as: SendFormChatMessageUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendFormChatMessageUseCaseImpl extends SendFormChatMessageUseCase {
  final ChatsRepository _chatsRepository;

  SendFormChatMessageUseCaseImpl(this._chatsRepository);

  @override
  Future<void> call(FormChatMessageUseCaseParams params) async {
    final fields = List<FormFieldRequest>.empty(growable: true);

    for (var element in params.form.fields) {
      if (element is TextFormFieldMessage) {
        fields.add(FormFieldRequest(element.id, params.formValues[element.id] ?? ''));
      } else if (element is SelectFormFieldMessage) {
        fields.add(FormFieldRequest(
          element.id,
          params.formValues[element.id] ??
              element.selectItems.firstWhereOrNull((e) => e.selected)?.id ??
              element.selectItems.first.id,
        ));
      } else if (element is DateFormFieldMessage) {
        fields.add(FormFieldRequest(element.id, params.formValues[element.id] ?? ''));
      } else if (element is CheckboxesFormFieldMessage) {
        for (final checkbox in element.selectItems) {
          fields.add(
            FormFieldRequest(
              checkbox.id,
              params.formValues[checkbox.id] ?? checkbox.selected.toString(),
            ),
          );
        }
      }
    }

    final request = FormRequest(params.form.id, fields, params.action);

    await _chatsRepository.sendForm(params.chatId, request);
  }
}
