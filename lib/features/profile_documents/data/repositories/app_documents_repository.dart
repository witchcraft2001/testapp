// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/profile_documents/data/data_sources/app_documents_db_data_source.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';
import 'package:terralinkapp/features/profile_documents/data/mappers/app_document_dao_mapper.dart';
import 'package:terralinkapp/features/profile_documents/data/mappers/app_document_mapper.dart';

abstract class AppDocumentsRepository {
  Future<int> create(AppDocument document);

  Future<List<AppDocument>> getAll([String? query]);
  Future<AppDocument?> getById(int id);

  Future<void> update(AppDocument document);

  Future<void> delete(int id);
  Future<void> deleteAll();
}

@LazySingleton(
  as: AppDocumentsRepository,
  env: [Environment.dev, Environment.prod],
)
class AppDocumentsDbRepositoryImpl implements AppDocumentsRepository {
  final AppDocumentsDbDataSource _dataSource;

  AppDocumentsDbRepositoryImpl({
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
