// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/documents_use_case_params.dart';

abstract class RemoveAppDocumentUseCase
    implements AsyncParamfullUseCase<void, DocumentsUseCaseParams> {}

@LazySingleton(
  as: RemoveAppDocumentUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveAppDocumentUseCaseImpl extends RemoveAppDocumentUseCase {
  final AppDocumentsRepository _repository;

  RemoveAppDocumentUseCaseImpl(this._repository);

  @override
  Future<void> call(DocumentsUseCaseParams params) async {
    for (final document in params.documents) {
      final file = File('${params.directoryPath}${document.path}');

      await _repository.delete(document.id);

      if (await file.exists()) {
        await file.delete();
      }
    }
  }
}
