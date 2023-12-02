// Package imports:
import 'package:injectable/injectable.dart';
import 'package:share_plus/share_plus.dart';

// Project imports:
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';

abstract class ShareAppDocumentsUseCase {
  Future<void> run(String directoryPath, List<AppDocument> documents);
}

@LazySingleton(
  as: ShareAppDocumentsUseCase,
  env: [Environment.dev, Environment.prod],
)
class ShareAppDocumentsUseCaseImpl extends ShareAppDocumentsUseCase {
  ShareAppDocumentsUseCaseImpl();

  @override
  Future<void> run(String directoryPath, List<AppDocument> documents) async {
    final xfiles = documents.map((document) => XFile('$directoryPath${document.path}')).toList();

    await Share.shareXFiles(xfiles);
  }
}
