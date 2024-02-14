// Package imports:
import 'package:injectable/injectable.dart';
import 'package:open_file_plus/open_file_plus.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/path_use_case_params.dart';

abstract class OpenTaskEasAttachmentUseCase
    implements AsyncParamfullUseCase<ResultType, PathUseCaseParams> {}

@LazySingleton(
  as: OpenTaskEasAttachmentUseCase,
  env: [Environment.dev, Environment.prod],
)
class OpenTaskEasAttachmentUseCaseImpl extends OpenTaskEasAttachmentUseCase {
  OpenTaskEasAttachmentUseCaseImpl();

  @override
  Future<ResultType> call(PathUseCaseParams params) async {
    final result = await OpenFile.open(params.path);

    return result.type;
  }
}
