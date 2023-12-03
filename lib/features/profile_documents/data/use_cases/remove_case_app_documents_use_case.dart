// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart';

abstract class RemoveAppDocumentUseCase {
  Future<void> run(String directoryPath, List<AppDocument> documents);
}

@LazySingleton(
  as: RemoveAppDocumentUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveAppDocumentUseCaseImpl extends RemoveAppDocumentUseCase {
  final AppDocumentsRepository _repository;

  RemoveAppDocumentUseCaseImpl(this._repository);

  @override
  Future<void> run(String directoryPath, List<AppDocument> documents) async {
    for (final document in documents) {
      final file = File('$directoryPath${document.path}');

      await _repository.delete(document.id);

      if (await file.exists()) {
        await file.delete();
      }
    }
  }
}
