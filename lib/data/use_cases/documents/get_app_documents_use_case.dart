// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';
import 'package:terralinkapp/domain/repositories/app_documents_repository.dart';

abstract class GetAppDocumentsUseCase {
  Future<List<AppDocument>> run([String? query]);
}

@LazySingleton(as: GetAppDocumentsUseCase, env: [Environment.dev, Environment.prod])
class GetAppDocumentsUseCaseImpl extends GetAppDocumentsUseCase {
  final AppDocumentsRepository _repository;

  GetAppDocumentsUseCaseImpl(this._repository);

  @override
  Future<List<AppDocument>> run([String? query]) async {
    final List<AppDocument> documents = await _repository.getAll(query);

    return documents;
  }
}
