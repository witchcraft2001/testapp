// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';

class DocumentsUseCaseParams implements UseCaseParams {
  DocumentsUseCaseParams(this.directoryPath, this.documents);

  final String directoryPath;
  final List<AppDocument> documents;
}
