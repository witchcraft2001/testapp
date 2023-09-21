// Package imports:
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/data/dao/business_card_dao.dart';

abstract class BusinessCardDbRepository {
  Future<List<BusinessCardDao>> getAll();

  Future<int> create(BusinessCardDao dao);

  Future update(BusinessCardDao dao);

  Future<BusinessCardDao?> getById(int id);

  Future delete(int id);

  Future deleteAll();
}

@LazySingleton(as: BusinessCardDbRepository, env: [Environment.dev, Environment.prod])
class BusinessCardDbRepositoryImpl extends BusinessCardDbRepository {
  final Database _db;

  static const tableName = 'business_cards';

  BusinessCardDbRepositoryImpl(this._db);

  @override
  Future<List<BusinessCardDao>> getAll() async {
    final res = await _db.query(tableName);

    return res.map((e) => BusinessCardDao.fromMap(e)).toList();
  }

  @override
  Future<int> create(BusinessCardDao dao) async {
    return await _db.insert(tableName, dao.toMap());
  }

  @override
  Future delete(int id) async {
    await _db.delete(tableName, where: '${BusinessCardDao.columnId} = ?', whereArgs: [id]);
  }

  @override
  Future<BusinessCardDao?> getById(int id) async {
    var res = await _db.query(tableName, where: '${BusinessCardDao.columnId} = ?', whereArgs: [id]);

    return res.isNotEmpty ? BusinessCardDao.fromMap(res.first) : null;
  }

  @override
  Future update(BusinessCardDao dao) async {
    await _db.update(
      tableName,
      dao.toMap(),
      where: '${BusinessCardDao.columnId} = ?',
      whereArgs: [dao.id],
    );
  }

  @override
  Future deleteAll() async {
    await _db.delete(tableName);
  }
}
