// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/business_card_mapper.dart';
import 'package:terralinkapp/data/repositories/local/business_card_db_repository.dart';
import 'package:terralinkapp/domain/business_card.dart';

abstract class SaveBusinessCardUseCase {
  Future<BusinessCard> run(BusinessCard item);
}

@LazySingleton(as: SaveBusinessCardUseCase, env: [Environment.dev, Environment.prod])
class SaveBusinessCardUseCaseImpl extends SaveBusinessCardUseCase {
  final BusinessCardDbRepository _repository;

  SaveBusinessCardUseCaseImpl(this._repository);

  @override
  Future<BusinessCard> run(BusinessCard item) async {
    if (item.id > 0) {
      await _repository.update(item.toDao());

      return item;
    } else {
      final id = await _repository.create(item.toDao());

      return item.copy(id: id);
    }
  }
}
