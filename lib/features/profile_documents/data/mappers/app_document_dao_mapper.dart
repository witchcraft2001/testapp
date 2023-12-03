// Project imports:
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/extensions/files_extensions.dart';
import 'package:terralinkapp/features/profile_documents/data/dao/app_document_dao.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';

extension AppDocumentDaoMappers on AppDocumentDao {
  AppDocument toDomain() {
    final date = DateTime.fromMillisecondsSinceEpoch(time);

    return AppDocument(
      id: id,
      name: name,
      extension: extension,
      path: path,
      directory: directory,
      size: size,
      date: date,
      formattedDate: date.toDateTimeNumbersString(),
      formattedSize: getFileSize(size),
    );
  }
}
