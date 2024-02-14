// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/profile_documents/data/entities/app_document.dart';
import 'package:terralinkapp/features/profile_documents/data/repositories/app_documents_repository.dart';
import 'package:terralinkapp/features/profile_documents/domain/use_cases/params/query_use_case_params.dart';

abstract class GetAppDocumentsUseCase
    implements AsyncParamfullUseCase<List<AppDocument>, QueryUseCaseParams> {}

@LazySingleton(
  as: GetAppDocumentsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetAppDocumentsUseCaseImpl extends GetAppDocumentsUseCase {
  final AppDocumentsRepository _repository;

  GetAppDocumentsUseCaseImpl(this._repository);

  @override
  Future<List<AppDocument>> call(QueryUseCaseParams params) async {
    final List<AppDocument> documents = await _repository.getAll(params.query);

    return documents;
  }
}
