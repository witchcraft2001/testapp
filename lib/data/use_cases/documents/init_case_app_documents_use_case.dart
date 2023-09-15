// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

const directoryDocuments = 'documents';

abstract class InitAppDocumentsUseCase {
  Future<Directory> run();
}

@LazySingleton(as: InitAppDocumentsUseCase, env: [Environment.dev, Environment.prod])
class InitAppDocumentsInitUseCaseImpl extends InitAppDocumentsUseCase {
  InitAppDocumentsInitUseCaseImpl();

  @override
  Future<Directory> run() async {
    final directoryApp = await getApplicationDocumentsDirectory();

    final directory = Directory('${directoryApp.path}/$directoryDocuments/');

    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    return directory;
  }
}
