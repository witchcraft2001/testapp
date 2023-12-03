// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

const directoryEas = 'eas';

abstract class InitTaskEasAttachmentsDirectoryUseCase {
  Future<Directory> run();
}

@LazySingleton(
  as: InitTaskEasAttachmentsDirectoryUseCase,
  env: [Environment.dev, Environment.prod],
)
class InitTaskEasAttachmentsDirectoryUseCaseImpl extends InitTaskEasAttachmentsDirectoryUseCase {
  InitTaskEasAttachmentsDirectoryUseCaseImpl();

  @override
  Future<Directory> run() async {
    final directoryApp = await getApplicationDocumentsDirectory();
    final directory = Directory('${directoryApp.path}/$directoryEas/');

    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    return directory;
  }
}
