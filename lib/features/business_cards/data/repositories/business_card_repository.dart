// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/business_cards/data/data_sources/business_card_db_data_source.dart';
import 'package:terralinkapp/features/business_cards/data/mappers/business_card_dao_mapper.dart';
import 'package:terralinkapp/features/business_cards/data/mappers/business_card_mapper.dart';
import 'package:terralinkapp/features/business_cards/domain/entities/business_card.dart';

abstract class BusinessCardRepository {
  Future<int> create(BusinessCard card);

  Future<List<BusinessCard>> getAll();
  Future<BusinessCard?> getById(int id);

  Future<void> update(BusinessCard card);

  Future<void> delete(int id);
  Future<void> deleteAll();
}

@LazySingleton(
  as: BusinessCardRepository,
  env: [Environment.dev, Environment.prod],
)
class BusinessCardRepositoryImpl implements BusinessCardRepository {
  final BusinessCardDbDataSource _dataSource;

  BusinessCardRepositoryImpl({
    required BusinessCardDbDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<int> create(BusinessCard card) {
    return _dataSource.create(card.toDao());
  }

  @override
  Future<void> delete(int id) {
    return _dataSource.delete(id);
  }

  @override
  Future<void> deleteAll() {
    return _dataSource.deleteAll();
  }

  @override
  Future<List<BusinessCard>> getAll() async {
    return (await _dataSource.getAll()).map((dao) => dao.toDomain()).toList();
  }

  @override
  Future<BusinessCard?> getById(int id) async {
    return (await _dataSource.getById(id))?.toDomain();
  }

  @override
  Future<void> update(BusinessCard card) {
    return _dataSource.update(card.toDao());
  }
}
