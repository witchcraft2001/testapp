// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/dao/chat_dao.dart';
import 'package:terralinkapp/data/providers/db_provider.dart';

abstract class ChatsDbRepository {
  Future<List<ChatDao>> getAll();

  Future update(ChatDao dao);

  Future<ChatDao?> getById(String id);

  Future<ChatDao> create(ChatDao dao);

  Future delete(String id);

  Future deleteAll();
}

@LazySingleton(as: ChatsDbRepository, env: [Environment.dev, Environment.prod])
class ChatsDbRepositoryImpl extends ChatsDbRepository {
  final DbProvider _dbProvider;
  static const tableName = 'chats';

  ChatsDbRepositoryImpl(this._dbProvider);

  @override
  Future<List<ChatDao>> getAll() async {
    var db = await _dbProvider.db;
    List<Map> maps = await db.query(tableName);

    return maps.isNotEmpty ? maps.map((e) => ChatDao.fromMap(e)).toList() : [];
  }

  @override
  Future update(ChatDao dao) async {
    var db = await _dbProvider.db;
    await db.update(tableName, dao.toMap(), where: '${ChatDao.columnId} = ?', whereArgs: [dao.id]);
  }

  @override
  Future<ChatDao?> getById(String id) async {
    var db = await _dbProvider.db;
    var res = await db.query(tableName, where: '${ChatDao.columnId} = ?', whereArgs: [id]);

    return res.isNotEmpty ? ChatDao.fromMap(res.first) : null;
  }

  @override
  Future<ChatDao> create(ChatDao dao) async {
    var db = await _dbProvider.db;
    await db.insert(tableName, dao.toMap());
    
    return dao;
  }

  @override
  Future delete(String id) async {
    var db = await _dbProvider.db;
    await db.delete(tableName, where: '${ChatDao.columnId} = ?', whereArgs: [id]);
  }

  @override
  Future deleteAll() async {
    var db = await _dbProvider.db;
    await db.delete(tableName);
  }
}
