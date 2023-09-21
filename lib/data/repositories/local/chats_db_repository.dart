// Package imports:
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/data/dao/chat_dao.dart';

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
  final Database _db;
  static const tableName = 'chats';

  ChatsDbRepositoryImpl(this._db);

  @override
  Future<List<ChatDao>> getAll() async {
    List<Map> maps = await _db.query(tableName);

    return maps.isNotEmpty ? maps.map((e) => ChatDao.fromMap(e)).toList() : [];
  }

  @override
  Future update(ChatDao dao) async {
    await _db.update(tableName, dao.toMap(), where: '${ChatDao.columnId} = ?', whereArgs: [dao.id]);
  }

  @override
  Future<ChatDao?> getById(String id) async {
    var res = await _db.query(tableName, where: '${ChatDao.columnId} = ?', whereArgs: [id]);

    return res.isNotEmpty ? ChatDao.fromMap(res.first) : null;
  }

  @override
  Future<ChatDao> create(ChatDao dao) async {
    await _db.insert(tableName, dao.toMap());

    return dao;
  }

  @override
  Future delete(String id) async {
    await _db.delete(tableName, where: '${ChatDao.columnId} = ?', whereArgs: [id]);
  }

  @override
  Future deleteAll() async {
    await _db.delete(tableName);
  }
}
