// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart';

abstract class EditAppDocumentUseCase {
  Future<AppDocument> run(
    String directoryPath,
    AppDocument document,
    String newFileName,
  );
}

@LazySingleton(
  as: EditAppDocumentUseCase,
  env: [Environment.dev, Environment.prod],
)
class EditAppDocumentUseCaseImpl extends EditAppDocumentUseCase {
  final AppDocumentsRepository _repository;

  EditAppDocumentUseCaseImpl(this._repository);

  @override
  Future<AppDocument> run(
    String directoryPath,
    AppDocument document,
    String newFileName,
  ) async {
    final path = '$directoryPath${document.path}';

    // Получение прежнего
    final oldFile = File(path);

    // Создание нового
    final newFilePath =
        '$newFileName.${document.date.millisecondsSinceEpoch}.${document.extension}';

    final newFilePathWithDirectory = '$directoryPath$newFilePath';

    await oldFile.copy(newFilePathWithDirectory);

    final newDocument = document.copyWith(
      name: newFileName,
      path: newFilePath,
    );

    await _repository.update(newDocument);

    // Удаление прежнего
    if (await oldFile.exists()) await oldFile.delete();

    return newDocument;
  }
}
