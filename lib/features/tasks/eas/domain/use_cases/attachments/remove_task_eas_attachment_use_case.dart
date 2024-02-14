// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/params/attachment_task_eas_use_case_params.dart';

abstract class RemoveTaskEasAttachmentUseCase
    implements AsyncParamfullUseCase<void, AttachmentTaskEasUseCaseParams> {}

@LazySingleton(
  as: RemoveTaskEasAttachmentUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveTaskEasAttachmentUseCaseImpl extends RemoveTaskEasAttachmentUseCase {
  final TasksEasAttachmentsRepository _repository;

  RemoveTaskEasAttachmentUseCaseImpl(this._repository);

  @override
  Future<void> call(AttachmentTaskEasUseCaseParams params) async {
    final file = File('${params.directoryPath}${params.attachment.path}');

    await _repository.delete(params.attachment.id);

    if (await file.exists()) {
      await file.delete();
    }
  }
}
