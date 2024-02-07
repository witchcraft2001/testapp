// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';

class AppDocumentUseCaseParams implements UseCaseParams {
  AppDocumentUseCaseParams({
    required this.directoryPath,
    required this.document,
    required this.newFileName,
  });

  final String directoryPath;
  final AppDocument document;
  final String newFileName;
}
