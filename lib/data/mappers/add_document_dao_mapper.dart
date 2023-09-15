// Project imports:
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/common/extensions/files.dart';
import 'package:terralinkapp/data/dao/app_document_dao.dart';
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';

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
