// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/business_cards/data/repositories/business_card_repository.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

abstract class SaveBusinessCardUseCase {
  Future<BusinessCard> run(BusinessCard item);
}

@LazySingleton(
  as: SaveBusinessCardUseCase,
  env: [Environment.dev, Environment.prod],
)
class SaveBusinessCardUseCaseImpl extends SaveBusinessCardUseCase {
  final BusinessCardRepository _repository;

  SaveBusinessCardUseCaseImpl(this._repository);

  @override
  Future<BusinessCard> run(BusinessCard item) async {
    if (item.id > 0) {
      await _repository.update(item);

      return item;
    } else {
      final id = await _repository.create(item);

      return item.copy(id: id);
    }
  }
}
