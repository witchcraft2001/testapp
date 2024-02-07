// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/tasks/eas/data/entities/app_eas_attachment.dart';

class AttachmentTaskEasUseCaseParams implements UseCaseParams {
  final String directoryPath;
  final AppEasAttachment attachment;

  AttachmentTaskEasUseCaseParams(this.directoryPath, this.attachment);
}
