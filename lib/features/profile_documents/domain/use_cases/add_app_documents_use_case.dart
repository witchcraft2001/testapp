// Dart imports:
import 'dart:io';

// Package imports:
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/extensions/date_time_extensions.dart';
import 'package:terralinkapp/core/extensions/files_extensions.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/init_case_app_documents_use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/path_use_case_params.dart';

abstract class AddAppDocumentsUseCase
    implements AsyncParamfullUseCase<List<AppDocument>, PathUseCaseParams> {}

@LazySingleton(
  as: AddAppDocumentsUseCase,
  env: [Environment.dev, Environment.prod],
)
class AddAppDocumentsAddUseCaseImpl extends AddAppDocumentsUseCase {
  final AppDocumentsRepository _repository;

  AddAppDocumentsAddUseCaseImpl(this._repository);

  @override
  Future<List<AppDocument>> call(PathUseCaseParams params) async {
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
        path: _getDocumentPathAndWrite(directoryPath: params.path, file: file, date: date),
      );

      final id = await _repository.create(document);

      document = document.copyWith(
        id: id,
        formattedDate: date.toDateTimeNumbersString(),
        formattedSize: getFileSize(file.size),
      );

      documents.add(document);
    }

    return documents;
  }

  String _getDocumentPathAndWrite({
    required String directoryPath,
    required PlatformFile file,
    required DateTime date,
  }) {
    final filename = file.nameWithDate(date);
    final path = '$directoryPath$filename';

    // Save copy to app
    File(path).writeAsBytes(file.bytes!);

    return filename;
  }
}
