// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/app_document_use_case_params.dart';

abstract class EditAppDocumentUseCase
    implements AsyncParamfullUseCase<AppDocument, AppDocumentUseCaseParams> {}

@LazySingleton(
  as: EditAppDocumentUseCase,
  env: [Environment.dev, Environment.prod],
)
class EditAppDocumentUseCaseImpl extends EditAppDocumentUseCase {
  final AppDocumentsRepository _repository;

  EditAppDocumentUseCaseImpl(this._repository);

  @override
  Future<AppDocument> call(AppDocumentUseCaseParams params) async {
    final path = '${params.directoryPath}${params.document.path}';

    // Получение прежнего
    final oldFile = File(path);

    // Создание нового
    final newFilePath =
        '${params.newFileName}.${params.document.date.millisecondsSinceEpoch}.${params.document.extension}';

    final newFilePathWithDirectory = '${params.directoryPath}$newFilePath';

    await oldFile.copy(newFilePathWithDirectory);

    final newDocument = params.document.copyWith(
      name: params.newFileName,
      path: newFilePath,
    );

    await _repository.update(newDocument);

    // Удаление прежнего
    if (await oldFile.exists()) await oldFile.delete();

    return newDocument;
  }
}
