// Dart imports:
import 'dart:io';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';

const directoryGreetingCards = 'holidays';

abstract class InitGreetingCardsDirectoryUseCase implements AsyncParamlessUseCase<Directory> {}

@LazySingleton(
  as: InitGreetingCardsDirectoryUseCase,
  env: [Environment.dev, Environment.prod],
)
class InitGreetingCardsDirectoryUseCaseImpl extends InitGreetingCardsDirectoryUseCase {
  InitGreetingCardsDirectoryUseCaseImpl();

  @override
  Future<Directory> call([UseCaseParams params = const NoParams()]) async {
    final directoryApp = await getApplicationDocumentsDirectory();

    final directory = Directory('${directoryApp.path}/$directoryGreetingCards/');

    if (!await directory.exists()) {
      await directory.create(recursive: true);
    }

    return directory;
  }
}
