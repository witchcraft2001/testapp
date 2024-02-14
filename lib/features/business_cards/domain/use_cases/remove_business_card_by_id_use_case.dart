// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/int_id_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';

abstract class RemoveBusinessCardByIdUseCase
    implements AsyncParamfullUseCase<void, IntIdUseCaseParams> {}

@LazySingleton(
  as: RemoveBusinessCardByIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class RemoveBusinessCardByIdUseCaseImpl extends RemoveBusinessCardByIdUseCase {
  final BusinessCardRepository _repository;

  RemoveBusinessCardByIdUseCaseImpl(this._repository);

  @override
  Future<void> call(IntIdUseCaseParams params) async {
    await _repository.delete(params.id);
  }
}
