// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/dao/business_card_dao.dart';
import 'package:terralinkapp/data/providers/db_provider.dart';

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
  final DbProvider _dbProvider;

  static const tableName = 'business_cards';

  BusinessCardDbRepositoryImpl(this._dbProvider);

  @override
  Future<List<BusinessCardDao>> getAll() async {
    final db = await _dbProvider.db;
    final res = await db.query(tableName);

    return res.map((e) => BusinessCardDao.fromMap(e)).toList();
  }

  @override
  Future<int> create(BusinessCardDao dao) async {
    final db = await _dbProvider.db;

    return await db.insert(tableName, dao.toMap());
  }

  @override
  Future delete(int id) async {
    final db = await _dbProvider.db;
    await db.delete(tableName, where: '${BusinessCardDao.columnId} = ?', whereArgs: [id]);
  }

  @override
  Future<BusinessCardDao?> getById(int id) async {
    var db = await _dbProvider.db;
    var res = await db.query(tableName, where: '${BusinessCardDao.columnId} = ?', whereArgs: [id]);

    return res.isNotEmpty ? BusinessCardDao.fromMap(res.first) : null;
  }

  @override
  Future update(BusinessCardDao dao) async {
    var db = await _dbProvider.db;
    await db.update(
      tableName,
      dao.toMap(),
      where: '${BusinessCardDao.columnId} = ?',
      whereArgs: [dao.id],
    );
  }

  @override
  Future deleteAll() async {
    final db = await _dbProvider.db;
    await db.delete(tableName);
  }
}
