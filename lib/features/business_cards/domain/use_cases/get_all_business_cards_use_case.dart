// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/use_cases/params/no_params.dart';
import 'package:terralinkapp/core/use_cases/params/use_case_params.dart';
import 'package:terralinkapp/core/use_cases/use_case.dart';
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

abstract class GetAllBusinessCardsUseCase implements AsyncParamlessUseCase<List<BusinessCard>> {}

@LazySingleton(
  as: GetAllBusinessCardsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetAllBusinessCardsUseCaseImpl extends GetAllBusinessCardsUseCase {
  final BusinessCardRepository _repository;

  GetAllBusinessCardsUseCaseImpl(this._repository);

  @override
  Future<List<BusinessCard>> call([UseCaseParams params = const NoParams()]) {
    return _repository.getAll();
  }
}
