// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/app_document_mapper.dart';
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';
import 'package:terralinkapp/data/repositories/local/documents_db_repository.dart';

abstract class EditAppDocumentUseCase {
  Future<AppDocument> run(
    String directoryPath,
    AppDocument document,
    String newFileName,
  );
}

@LazySingleton(as: EditAppDocumentUseCase, env: [Environment.dev, Environment.prod])
class EditAppDocumentUseCaseImpl extends EditAppDocumentUseCase {
  final AppDocumentsDbRepository _repository;

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

    await _repository.update(newDocument.toDao());

    // Удаление прежнего
    if (await oldFile.exists()) await oldFile.delete();

    return newDocument;
  }
}
