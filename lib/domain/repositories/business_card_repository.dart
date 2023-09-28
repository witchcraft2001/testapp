// Project imports:
import 'package:terralinkapp/domain/business_card.dart';

abstract class BusinessCardRepository {
  Future<List<BusinessCard>> getAll();

  Future<int> create(BusinessCard card);

  Future<void> update(BusinessCard card);

  Future<BusinessCard?> getById(int id);

  Future<void> delete(int id);

  Future<void> deleteAll();
}
