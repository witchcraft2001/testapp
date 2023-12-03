// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/iterable_extensions.dart';
import 'package:terralinkapp/features/chat/data/entities/requests/form_field_request.dart';
import 'package:terralinkapp/features/chat/data/entities/requests/form_request.dart';
import 'package:terralinkapp/features/chat/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chat/domain/entities/checkboxes_form_field_message.dart';
import 'package:terralinkapp/features/chat/domain/entities/date_form_field_message.dart';
import 'package:terralinkapp/features/chat/domain/entities/form_message.dart';
import 'package:terralinkapp/features/chat/domain/entities/select_form_field_message.dart';
import 'package:terralinkapp/features/chat/domain/entities/text_form_field_message.dart';

abstract class SendFormChatMessageUseCase {
  Future<void> run(
    String chatId,
    FormMessage form,
    Map<String, String> formValues,
    String action,
  );
}

@LazySingleton(
  as: SendFormChatMessageUseCase,
  env: [Environment.dev, Environment.prod],
)
class SendFormChatMessageUseCaseImpl extends SendFormChatMessageUseCase {
  final ChatsRepository _chatsRepository;

  SendFormChatMessageUseCaseImpl(this._chatsRepository);

  @override
  Future<void> run(
    String chatId,
    FormMessage form,
    Map<String, String> formValues,
    String action,
  ) async {
    final fields = List<FormFieldRequest>.empty(growable: true);

    for (var element in form.fields) {
      if (element is TextFormFieldMessage) {
        fields.add(FormFieldRequest(element.id, formValues[element.id] ?? ''));
      } else if (element is SelectFormFieldMessage) {
        fields.add(FormFieldRequest(
          element.id,
          formValues[element.id] ??
              element.selectItems.firstWhereOrNull((e) => e.selected)?.id ??
              element.selectItems.first.id,
        ));
      } else if (element is DateFormFieldMessage) {
        fields.add(FormFieldRequest(element.id, formValues[element.id] ?? ''));
      } else if (element is CheckboxesFormFieldMessage) {
        for (final checkbox in element.selectItems) {
          fields.add(
            FormFieldRequest(checkbox.id, formValues[checkbox.id] ?? checkbox.selected.toString()),
          );
        }
      }
    }

    final request = FormRequest(form.id, fields, action);

    await _chatsRepository.sendForm(chatId, request);
  }
}
