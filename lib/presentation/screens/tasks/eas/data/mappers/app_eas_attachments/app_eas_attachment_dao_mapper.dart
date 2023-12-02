// Project imports:
import 'package:terralinkapp/presentation/screens/tasks/eas/data/models/app_eas_attachment/app_eas_attachment.dart';
import 'package:terralinkapp/presentation/screens/tasks/eas/data/models/app_eas_attachment_dao/app_eas_attachment_dao.dart';

extension AppEasAttachmentDaoMappers on AppEasAttachmentDao {
  AppEasAttachment toDomain() => AppEasAttachment(
        id: id,
        taskId: taskId,
        name: name,
        path: path,
      );
}
