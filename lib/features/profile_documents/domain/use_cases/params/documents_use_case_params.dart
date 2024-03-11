// Flutter imports:
import 'package:flutter/rendering.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';

class DocumentsUseCaseParams implements UseCaseParams {
  DocumentsUseCaseParams({
    required this.directoryPath,
    required this.documents,
  });

  final String directoryPath;
  final List<AppDocument> documents;
}

class DocumentsSharedUseCaseParams extends DocumentsUseCaseParams {
  final Rect? sharePosition;

  DocumentsSharedUseCaseParams({
    required super.directoryPath,
    required super.documents,
    this.sharePosition,
  });
}
