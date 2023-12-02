// Project imports:
import 'package:terralinkapp/features/profile_documents/data/dao/app_document_dao.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';

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
