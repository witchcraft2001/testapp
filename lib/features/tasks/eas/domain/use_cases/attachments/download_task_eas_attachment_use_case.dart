// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/entities/app_eas_attachment.dart';
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/params/task_eas_use_case_params.dart';

abstract class DownloadTaskEasAttachmentUseCase
    implements AsyncParamfullUseCase<AppEasAttachment, TaskEasUseCaseParams> {}

@LazySingleton(
  as: DownloadTaskEasAttachmentUseCase,
  env: [Environment.dev, Environment.prod],
)
class DownloadTaskEasAttachmentUseCaseImpl extends DownloadTaskEasAttachmentUseCase {
  final TasksEasAttachmentsRepository _repository;
  final TasksEasRemoteDataSource _remoteDataSource;

  DownloadTaskEasAttachmentUseCaseImpl(
    this._repository,
    this._remoteDataSource,
  );

  @override
  Future<AppEasAttachment> call(TaskEasUseCaseParams params) async {
    final result = await _remoteDataSource.getAttachment(params.attachment.url ?? '');

    final name = '${params.taskId}-${params.attachment.name}';
    final filepath = '${params.directoryPath}${name.toLowerCase()}';

    File(filepath).writeAsBytes(result);

    final appAttachment = AppEasAttachment(
      taskId: params.taskId,
      name: name,
      path: name.toLowerCase(),
    );

    return await _repository.create(appAttachment);
  }
}
