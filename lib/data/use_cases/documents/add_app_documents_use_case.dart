// Dart imports:
import 'dart:io';

// Package imports:
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/common/extensions/date_time_extensions.dart';
import 'package:terralinkapp/common/extensions/files.dart';
import 'package:terralinkapp/data/mappers/app_document_mapper.dart';
import 'package:terralinkapp/data/models/app/app_document/app_document.dart';
import 'package:terralinkapp/data/repositories/local/documents_db_repository.dart';
import 'package:terralinkapp/data/use_cases/documents/init_case_app_documents_use_case.dart';

abstract class AddAppDocumentsUseCase {
  Future<List<AppDocument>> run(String directoryPath);
}

@LazySingleton(as: AddAppDocumentsUseCase, env: [Environment.dev, Environment.prod])
class AddAppDocumentsAddUseCaseImpl extends AddAppDocumentsUseCase {
  final AppDocumentsDbRepository _repository;

  AddAppDocumentsAddUseCaseImpl(this._repository);

  @override
  Future<List<AppDocument>> run(String directoryPath) async {
    final pickedFiles = await FilePicker.platform.pickFiles(
      withData: true,
      allowMultiple: true,
    );

    if (pickedFiles == null || pickedFiles.files.isEmpty) return [];

    List<AppDocument> documents = [];

    for (final file in pickedFiles.files) {
      final date = DateTime.now();

      AppDocument document = AppDocument(
        id: 0,
        name: file.onlyName,
        extension: file.extension,
        date: date,
        size: file.size,
        directory: directoryDocuments,
        path: _getDocumentPathAndWrite(directoryPath, file, date),
      );

      final id = await _repository.create(document.toDao());

      document = document.copyWith(
        id: id,
        formattedDate: date.toDateTimeNumbersString(),
        formattedSize: getFileSize(file.size),
      );

      documents.add(document);
    }

    return documents;
  }

  String _getDocumentPathAndWrite(String directoryPath, PlatformFile file, DateTime date) {
    final filename = file.nameWithDate(date);
    final path = '$directoryPath$filename';

    // Save copy to app
    File(path).writeAsBytes(file.bytes!);

    return filename;
  }
}
