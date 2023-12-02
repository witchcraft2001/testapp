// Package imports:
import 'package:injectable/injectable.dart';
import 'package:open_file_plus/open_file_plus.dart';

abstract class OpenTaskEasAttachmentUseCase {
  Future<ResultType> run(String directoryPath, String path);
}

@LazySingleton(
  as: OpenTaskEasAttachmentUseCase,
  env: [Environment.dev, Environment.prod],
)
class OpenTaskEasAttachmentUseCaseImpl extends OpenTaskEasAttachmentUseCase {
  OpenTaskEasAttachmentUseCaseImpl();

  @override
  Future<ResultType> run(String directoryPath, String path) async {
    final result = await OpenFile.open('$directoryPath$path');

    return result.type;
  }
}
