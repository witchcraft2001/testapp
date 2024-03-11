// Package imports:
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/documents_use_case_params.dart';

abstract class ShareAppDocumentsUseCase
    implements AsyncParamfullUseCase<void, DocumentsSharedUseCaseParams> {}

@LazySingleton(
  as: ShareAppDocumentsUseCase,
  env: [Environment.dev, Environment.prod],
)
class ShareAppDocumentsUseCaseImpl extends ShareAppDocumentsUseCase {
  ShareAppDocumentsUseCaseImpl();

  @override
  Future<void> call(DocumentsSharedUseCaseParams params) async {
    final List<XFile> xfiles = params.documents
        .map((document) => XFile('${params.directoryPath}${document.path}'))
        .toList();

    await Share.shareXFiles(
      xfiles,
      sharePositionOrigin: params.sharePosition,
    );
  }
}
