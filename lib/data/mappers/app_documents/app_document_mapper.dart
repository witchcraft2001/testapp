// Project imports:
import 'package:terralinkapp/data/dao/app_document_dao.dart';
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';

extension AppDocumentMappers on AppDocument {
  AppDocumentDao toDao() => AppDocumentDao(
        id: id,
        name: name,
        toSearch: name.toLowerCase(),
        path: path,
        directory: directory,
        time: date.millisecondsSinceEpoch,
        size: size,
        extension: extension,
      );
}
