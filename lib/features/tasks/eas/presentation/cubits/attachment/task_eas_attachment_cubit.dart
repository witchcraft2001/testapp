// Dart imports:
import 'dart:io';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file_plus/open_file_plus.dart';

// Project imports:
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/path_use_case_params.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_block_data_value.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/download_task_eas_attachment_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/get_task_eas_attachment_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/init_task_eas_attachments_directory_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/attachments/open_task_eas_attachment_use_case.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/params/filename_task_eas_use_case_params.dart';
import 'package:terralinkapp/features/tasks/eas/domain/use_cases/params/task_eas_use_case_params.dart';
import 'package:terralinkapp/features/tasks/eas/presentation/cubits/attachment/task_eas_attachment_cubit_state.dart';

@injectable
class TaskEasAttachmentCubit extends Cubit<TaskEasAttachmentCubitState> {
  final InitTaskEasAttachmentsDirectoryUseCase _initDirectoryUseCase;
  final GetTaskEasAttachmentUseCase _getAttachmentUseCase;
  final DownloadTaskEasAttachmentUseCase _downloadAttachmentUseCase;
  final OpenTaskEasAttachmentUseCase _openAttachmentUseCase;

  TaskEasAttachmentCubit(
    this._initDirectoryUseCase,
    this._getAttachmentUseCase,
    this._downloadAttachmentUseCase,
    this._openAttachmentUseCase,
  ) : super(const TaskEasAttachmentCubitState.init());

  TaskEasAttachmentStateReadyData _current = const TaskEasAttachmentStateReadyData();
  late Directory _directory;

  Future<void> init() async {
    _directory = await _initDirectoryUseCase();
  }

  Future<void> get(String taskId, ApiTaskEasBlockDataValue attachment) async {
    emit(const TaskEasAttachmentCubitState.loading());

    _current = _current.copyWith(
      taskId: taskId,
      attachment: attachment,
    );

    final filename = '${_current.taskId}-${_current.attachment?.name}';
    final document = await _getAttachmentUseCase(FilenameTaskEasUseCaseParams(filename));

    if (document != null) {
      _current = _current.copyWith(document: document);

      return emit(TaskEasAttachmentCubitState.ready(_current));
    }

    emit(const TaskEasAttachmentCubitState.init());
  }

  Future<void> download() async {
    emit(const TaskEasAttachmentCubitState.loading());

    try {
      final document = await _downloadAttachmentUseCase(
        TaskEasUseCaseParams(
          directoryPath: _directory.path,
          taskId: _current.taskId!,
          attachment: _current.attachment!,
        ),
      );

      _current = _current.copyWith(document: document);

      emit(TaskEasAttachmentCubitState.ready(_current));
    } catch (e) {
      emit(const TaskEasAttachmentCubitState.error());
    }
  }

  Future<ResultType> open() async => await _openAttachmentUseCase(
        PathUseCaseParams.combine(
          [
            _directory.path,
            _current.document?.path ?? '',
          ],
        ),
      );
}
