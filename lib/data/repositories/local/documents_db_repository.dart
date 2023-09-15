// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/dao/app_document_dao.dart';
import 'package:terralinkapp/data/providers/db_provider.dart';

abstract class AppDocumentsDbRepository {
  Future<List<AppDocumentDao>> getAll([String? query]);

  Future<int> create(AppDocumentDao dao);

  Future update(AppDocumentDao dao);

  Future<AppDocumentDao?> getById(int id);

  Future delete(int id);

  Future deleteAll();
}

@LazySingleton(as: AppDocumentsDbRepository, env: [Environment.dev, Environment.prod])
class AppDocumentsDbRepositoryImpl extends AppDocumentsDbRepository {
  final DbProvider _dbProvider;

  static const tableName = 'app_documents';

  AppDocumentsDbRepositoryImpl(this._dbProvider);

  @override
  Future<List<AppDocumentDao>> getAll([String? query]) async {
    final db = await _dbProvider.db;

    String? where;

    if (query != null) {
      where = '${AppDocumentDao.columnToSearch} LIKE "%$query%"';
    }

    final res = await db.query(tableName, where: where);

    return res.map((e) => AppDocumentDao.fromMap(e)).toList();
  }

  @override
  Future<int> create(AppDocumentDao dao) async {
    final db = await _dbProvider.db;

    return await db.insert(tableName, dao.toMap());
  }

  @override
  Future delete(int id) async {
    final db = await _dbProvider.db;
    await db.delete(tableName, where: '${AppDocumentDao.columnId} = ?', whereArgs: [id]);
  }

  @override
  Future<AppDocumentDao?> getById(int id) async {
    final db = await _dbProvider.db;
    final res = await db.query(tableName, where: '${AppDocumentDao.columnId} = ?', whereArgs: [id]);

    return res.isNotEmpty ? AppDocumentDao.fromMap(res.first) : null;
  }

  @override
  Future update(AppDocumentDao dao) async {
    final db = await _dbProvider.db;

    await db.update(
      tableName,
      dao.toMap(),
      where: '${AppDocumentDao.columnId} = ?',
      whereArgs: [dao.id],
    );
  }

  @override
  Future deleteAll() async {
    final db = await _dbProvider.db;
    await db.delete(tableName);
  }
}
