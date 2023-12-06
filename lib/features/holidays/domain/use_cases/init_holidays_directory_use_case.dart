// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

const directoryHolidays = 'holidays';

abstract class InitHolidaysDirectoryUseCase {
  Future<Directory> run();
}

@LazySingleton(
  as: InitHolidaysDirectoryUseCase,
  env: [Environment.dev, Environment.prod],
)
class InitHolidaysDirectoryUseCaseImpl extends InitHolidaysDirectoryUseCase {
  InitHolidaysDirectoryUseCaseImpl();

  @override
  Future<Directory> run() async {
    final directoryApp = await getApplicationDocumentsDirectory();

    final directory = Directory('${directoryApp.path}/$directoryHolidays/');

    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    return directory;
  }
}
