// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/presentation/screens/tasks/eas/data/models/app_eas_attachment/app_eas_attachment.dart';
import 'package:terralinkapp/presentation/screens/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart';

abstract class RemoveTaskEasAttachmentUseCase {
  Future<void> run(String directoryPath, AppEasAttachment attachment);
}

@LazySingleton(
  as: RemoveTaskEasAttachmentUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveTaskEasAttachmentUseCaseImpl extends RemoveTaskEasAttachmentUseCase {
  final TasksEasAttachmentsRepository _repository;

  RemoveTaskEasAttachmentUseCaseImpl(this._repository);

  @override
  Future<void> run(String directoryPath, AppEasAttachment attachment) async {
    final file = File('$directoryPath${attachment.path}');

    await _repository.delete(attachment.id);

    if (await file.exists()) {
      await file.delete();
    }
  }
}
