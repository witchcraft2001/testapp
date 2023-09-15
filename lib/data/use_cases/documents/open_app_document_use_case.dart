// Package imports:
import 'package:injectable/injectable.dart';
import 'package:open_file_plus/open_file_plus.dart';

abstract class OpenAppDocumentUseCase {
  Future<ResultType> run(String directoryPath, String path);
}

@LazySingleton(as: OpenAppDocumentUseCase, env: [Environment.dev, Environment.prod])
class OpenAppDocumentUseCaseImpl extends OpenAppDocumentUseCase {
  OpenAppDocumentUseCaseImpl();

  @override
  Future<ResultType> run(String directoryPath, String path) async {
    final result = await OpenFile.open('$directoryPath$path');

    return result.type;
  }
}
