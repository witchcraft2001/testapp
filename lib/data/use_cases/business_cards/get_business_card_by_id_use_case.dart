// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/mappers/business_card_dao_mapper.dart';
import 'package:terralinkapp/data/repositories/local/business_card_db_repository.dart';
import 'package:terralinkapp/domain/business_card.dart';

abstract class GetBusinessCardByIdUseCase {
  Future<BusinessCard?> run(int id);
}

@LazySingleton(as: GetBusinessCardByIdUseCase, env: [Environment.dev, Environment.prod])
class GetBusinessCardByIdUseCaseImpl extends GetBusinessCardByIdUseCase {
  final BusinessCardDbRepository _repository;
  GetBusinessCardByIdUseCaseImpl(this._repository);

  @override
  Future<BusinessCard?> run(int id) async {
    final item = await _repository.getById(id);

    return item?.toDomain();
  }
}
