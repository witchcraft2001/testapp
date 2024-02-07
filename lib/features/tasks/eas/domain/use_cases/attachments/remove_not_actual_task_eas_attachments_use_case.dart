// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/set_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/entities/app_eas_attachment.dart';
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/remove_task_eas_attachment_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/params/attachment_task_eas_use_case_params.dart';

abstract class RemoveNotActualTaskEasAttachmentsUseCase
    implements AsyncParamfullUseCase<void, SetUseCaseParams<String>> {}

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
  Future<void> call(SetUseCaseParams<String> params) async {
    if (params.collection.isEmpty) {
      return;
    }

    final directoryApp = await getApplicationDocumentsDirectory();
    final directory = Directory('${directoryApp.path}/$directoryEas/');

    final attachments = await _repository.getAll();

    for (final AppEasAttachment attachment in attachments) {
      final isActual = params.collection.contains(attachment.taskId);

      if (!isActual) {
        await _removeAttachmentUseCase(AttachmentTaskEasUseCaseParams(directory.path, attachment));
      }
    }
  }
}
