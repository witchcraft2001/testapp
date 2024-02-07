// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';

const directoryDocuments = 'documents';

abstract class InitAppDocumentsUseCase implements AsyncParamlessUseCase<Directory> {}

@LazySingleton(
  as: InitAppDocumentsUseCase,
  env: [Environment.dev, Environment.prod],
)
class InitAppDocumentsInitUseCaseImpl extends InitAppDocumentsUseCase {
  InitAppDocumentsInitUseCaseImpl();

  @override
  Future<Directory> call([UseCaseParams params = const NoParams()]) async {
    final directoryApp = await getApplicationDocumentsDirectory();

    final directory = Directory('${directoryApp.path}/$directoryDocuments/');

    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    return directory;
  }
}
