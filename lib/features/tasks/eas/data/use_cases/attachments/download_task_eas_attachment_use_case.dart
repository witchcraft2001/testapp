// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_remote_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/entities/app_eas_attachment.dart';
import 'package:terralinkapp/features/tasks/eas/data/repositories/tasks_eas_attachments_repository.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_block_data_value.dart';

abstract class DownloadTaskEasAttachmentUseCase {
  Future<AppEasAttachment> run(
    String directoryPath,
    String taskId,
    ApiTaskEasBlockDataValue attachment,
  );
}

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
  Future<AppEasAttachment> run(
    String directoryPath,
    String taskId,
    ApiTaskEasBlockDataValue attachment,
  ) async {
    final result = await _remoteDataSource.getAttachment(attachment.url ?? '');

    final name = '$taskId-${attachment.name}';
    final filepath = '$directoryPath${name.toLowerCase()}';

    File(filepath).writeAsBytes(result);

    final appAttachment = AppEasAttachment(
      taskId: taskId,
      name: name,
      path: name.toLowerCase(),
    );

    return await _repository.create(appAttachment);
  }
}
