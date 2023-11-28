// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:terralinkapp/domain/entities/api_task_eas/api_task_eas_block_data_value.dart';
import 'package:terralinkapp/presentation/screens/tasks/eas/data/models/app_eas_attachment/app_eas_attachment.dart';

part 'task_eas_attachment_cubit_state.freezed.dart';

@freezed
class TaskEasAttachmentCubitState with _$TaskEasAttachmentCubitState {
  const factory TaskEasAttachmentCubitState.init() = _Init;
  const factory TaskEasAttachmentCubitState.loading() = _Loading;
  const factory TaskEasAttachmentCubitState.ready(TaskEasAttachmentStateReadyData data) = _Ready;
  const factory TaskEasAttachmentCubitState.error() = _Error;
}

class TaskEasAttachmentStateReadyData {
  final String? taskId, toastMessage;
  final ApiTaskEasBlockDataValue? attachment;
  final AppEasAttachment? document;

  const TaskEasAttachmentStateReadyData({
    this.taskId,
    this.attachment,
    this.document,
    this.toastMessage,
  });

  TaskEasAttachmentStateReadyData copyWith({
    String? taskId,
    ApiTaskEasBlockDataValue? attachment,
    AppEasAttachment? document,
    String? toastMessage,
  }) =>
      TaskEasAttachmentStateReadyData(
        taskId: taskId ?? this.taskId,
        attachment: attachment ?? this.attachment,
        document: document ?? this.document,
        toastMessage: toastMessage ?? this.toastMessage,
      );
}
