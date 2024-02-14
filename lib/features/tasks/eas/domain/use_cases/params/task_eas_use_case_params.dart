// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/tasks/eas/domain/entities/api_task_eas_block_data_value.dart';

class TaskEasUseCaseParams implements UseCaseParams {
  TaskEasUseCaseParams({
    required this.directoryPath,
    required this.taskId,
    required this.attachment,
  });

  final String directoryPath;
  final String taskId;
  final ApiTaskEasBlockDataValue attachment;
}
