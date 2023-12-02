// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/entities/app_eas_attachment.dart';
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart';

abstract class GetTaskEasAttachmentUseCase {
  Future<AppEasAttachment?> run(String filename);
}

@LazySingleton(
  as: GetTaskEasAttachmentUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetTaskEasAttachmentUseCaseImpl extends GetTaskEasAttachmentUseCase {
  final TasksEasAttachmentsRepository _repository;

  GetTaskEasAttachmentUseCaseImpl(this._repository);

  @override
  Future<AppEasAttachment?> run(String filename) async {
    final attachment = await _repository.get(filename);

    return attachment;
  }
}
