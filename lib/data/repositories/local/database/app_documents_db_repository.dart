// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/database/app_documents_db_data_source.dart';
import 'package:terralinkapp/data/mappers/app_documents/app_document_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/app_documents/app_document_mapper.dart';
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';
import 'package:terralinkapp/domain/repositories/app_documents_repository.dart';

@LazySingleton(as: AppDocumentsRepository, env: [Environment.dev, Environment.prod])
class AppDocumentsDbRepository implements AppDocumentsRepository {
  final AppDocumentsDbDataSource _dataSource;

  AppDocumentsDbRepository({
    required AppDocumentsDbDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<int> create(AppDocument document) {
    return _dataSource.create(document.toDao());
  }

  @override
  Future<void> delete(int id) {
    return _dataSource.delete(id);
  }

  @override
  Future<void> deleteAll() {
    return _dataSource.deleteAll();
  }

  @override
  Future<List<AppDocument>> getAll([String? query]) async {
    return (await _dataSource.getAll(query)).map((dao) => dao.toDomain()).toList();
  }

  @override
  Future<AppDocument?> getById(int id) async {
    return (await _dataSource.getById(id))?.toDomain();
  }

  @override
  Future<void> update(AppDocument document) {
    return _dataSource.update(document.toDao());
  }
}
