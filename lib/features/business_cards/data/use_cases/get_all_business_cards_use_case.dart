// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

abstract class GetAllBusinessCardsUseCase {
  Future<List<BusinessCard>> run();
}

@LazySingleton(
  as: GetAllBusinessCardsUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetAllBusinessCardsUseCaseImpl extends GetAllBusinessCardsUseCase {
  final BusinessCardRepository _repository;

  GetAllBusinessCardsUseCaseImpl(this._repository);

  @override
  Future<List<BusinessCard>> run() async {
    return _repository.getAll();
  }
}
