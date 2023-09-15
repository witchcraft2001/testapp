// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';
import 'package:terralinkapp/data/repositories/local/documents_db_repository.dart';

abstract class RemoveAppDocumentUseCase {
  Future run(String directoryPath, List<AppDocument> documents);
}

@LazySingleton(as: RemoveAppDocumentUseCase, env: [Environment.dev, Environment.prod])
class RemoveAppDocumentUseCaseImpl extends RemoveAppDocumentUseCase {
  final AppDocumentsDbRepository _repository;

  RemoveAppDocumentUseCaseImpl(this._repository);

  @override
  Future run(String directoryPath, List<AppDocument> documents) async {
    for (final document in documents) {
      final file = File('$directoryPath${document.path}');

      await _repository.delete(document.id);

      if (await file.exists()) {
        await file.delete();
      }
    }
  }
}
