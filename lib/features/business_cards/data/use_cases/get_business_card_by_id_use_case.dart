// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

abstract class GetBusinessCardByIdUseCase {
  Future<BusinessCard?> run(int id);
}

@LazySingleton(
  as: GetBusinessCardByIdUseCase,
  env: [Environment.dev, Environment.prod],
)
class GetBusinessCardByIdUseCaseImpl extends GetBusinessCardByIdUseCase {
  final BusinessCardRepository _repository;
  GetBusinessCardByIdUseCaseImpl(this._repository);

  @override
  Future<BusinessCard?> run(int id) async {
    final item = await _repository.getById(id);

    return item;
  }
}
