// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/data_sources/local/database/business_card_db_data_source.dart';
import 'package:terralinkapp/data/mappers/business_card_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/business_card_mapper.dart';
import 'package:terralinkapp/domain/business_card.dart';
import 'package:terralinkapp/domain/repositories/business_card_repository.dart';

@LazySingleton(as: BusinessCardRepository, env: [Environment.dev, Environment.prod])
class BusinessCardDbRepository implements BusinessCardRepository {
  final BusinessCardDbDataSource _dataSource;

  BusinessCardDbRepository({
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
