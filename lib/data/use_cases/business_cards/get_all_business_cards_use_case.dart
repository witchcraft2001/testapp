// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/business_card_dao_mapper.dart';
import 'package:terralinkapp/data/repositories/local/business_card_db_repository.dart';
import 'package:terralinkapp/domain/business_card.dart';

abstract class GetAllBusinessCardsUseCase {
  Future<List<BusinessCard>> run();
}

@LazySingleton(as: GetAllBusinessCardsUseCase, env: [Environment.dev, Environment.prod])
class GetAllBusinessCardsUseCaseImpl extends GetAllBusinessCardsUseCase {
  final BusinessCardDbRepository _repository;

  GetAllBusinessCardsUseCaseImpl(this._repository);

  @override
  Future<List<BusinessCard>> run() async {
    final items = await _repository.getAll();

    return items.map((e) => e.toDomain()).toList(growable: false);
  }
}
