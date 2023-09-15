// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/add_document_dao_mapper.dart';
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';
import 'package:terralinkapp/data/repositories/local/documents_db_repository.dart';

abstract class GetAppDocumentsUseCase {
  Future<List<AppDocument>> run([String? query]);
}

@LazySingleton(as: GetAppDocumentsUseCase, env: [Environment.dev, Environment.prod])
class GetAppDocumentsUseCaseImpl extends GetAppDocumentsUseCase {
  final AppDocumentsDbRepository _repository;

  GetAppDocumentsUseCaseImpl(this._repository);

  @override
  Future<List<AppDocument>> run([String? query]) async {
    final documents = await _repository.getAll(query);

    return documents.map((document) => document.toDomain()).toList(growable: false);
  }
}
