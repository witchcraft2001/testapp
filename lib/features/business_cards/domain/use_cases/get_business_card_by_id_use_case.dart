// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/int_id_use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

abstract class GetBusinessCardByIdUseCase
    implements AsyncParamfullUseCase<BusinessCard?, IntIdUseCaseParams> {}

@LazySingleton(
  as: GetBusinessCardByIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetBusinessCardByIdUseCaseImpl extends GetBusinessCardByIdUseCase {
  final BusinessCardRepository _repository;
  GetBusinessCardByIdUseCaseImpl(this._repository);

  @override
  Future<BusinessCard?> call(IntIdUseCaseParams params) {
    return _repository.getById(params.id);
  }
}
