// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/entities/app_eas_attachment.dart';
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/params/filename_task_eas_use_case_params.dart';

abstract class GetTaskEasAttachmentUseCase
    implements AsyncParamfullUseCase<AppEasAttachment?, FilenameTaskEasUseCaseParams> {}

@LazySingleton(
  as: GetTaskEasAttachmentUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTaskEasAttachmentUseCaseImpl extends GetTaskEasAttachmentUseCase {
  final TasksEasAttachmentsRepository _repository;

  GetTaskEasAttachmentUseCaseImpl(this._repository);

  @override
  Future<AppEasAttachment?> call(FilenameTaskEasUseCaseParams params) async {
    final attachment = await _repository.get(params.filename);

    return attachment;
  }
}
