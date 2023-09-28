// Project imports:
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';

abstract class AppDocumentsRepository {
  Future<int> create(AppDocument document);

  Future<List<AppDocument>> getAll([String? query]);

  Future<void> update(AppDocument document);

  Future<AppDocument?> getById(int id);

  Future<void> delete(int id);

  Future<void> deleteAll();
}
