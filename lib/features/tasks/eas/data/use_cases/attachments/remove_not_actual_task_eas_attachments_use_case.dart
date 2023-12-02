// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart';
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/use_cases/attachments/remove_task_eas_attachment_use_case.dart';

abstract class RemoveNotActualTaskEasAttachmentsUseCase {
  Future<void> run([Set<String>? tasks]);
}

@LazySingleton(
  as: RemoveNotActualTaskEasAttachmentsUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveNotActualTaskEasAttachmentsUseCaseImpl
    extends RemoveNotActualTaskEasAttachmentsUseCase {
  final TasksEasAttachmentsRepository _repository;
  final RemoveTaskEasAttachmentUseCase _removeAttachmentUseCase;

  RemoveNotActualTaskEasAttachmentsUseCaseImpl(
    this._repository,
    this._removeAttachmentUseCase,
  );

  @override
  Future<void> run([Set<String>? tasks]) async {
    final directoryApp = await getApplicationDocumentsDirectory();
    final directory = Directory('${directoryApp.path}/$directoryEas/');

    if (tasks != null) {
      final attachments = await _repository.getAll();

      for (final attachment in attachments) {
        final isActual = tasks.contains(attachment.taskId);

        if (!isActual) {
          await _removeAttachmentUseCase.run(directory.path, attachment);
        }
      }
    }
  }
}
