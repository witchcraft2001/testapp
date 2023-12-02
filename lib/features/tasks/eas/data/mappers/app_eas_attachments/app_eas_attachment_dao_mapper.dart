// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/app_eas_attachment_dao/app_eas_attachment_dao.dart';
import 'package:terralinkapp/features/tasks/eas/data/entities/app_eas_attachment.dart';

extension AppEasAttachmentDaoMappers on AppEasAttachmentDao {
  AppEasAttachment toDomain() => AppEasAttachment(
        id: id,
        taskId: taskId,
        name: name,
        path: path,
      );
}
