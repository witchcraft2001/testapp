// Package imports:
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/features/chat/data/dao/chat_dao.dart';

abstract class ChatsDbDataSource {
  Future<List<ChatDao>> getAll();

  Future update(ChatDao dao);

  Future<ChatDao?> getById(String id);

  Future<ChatDao> create(ChatDao dao);

  Future delete(String id);

  Future deleteAll();
}

@LazySingleton(
  as: ChatsDbDataSource,
  env: [Environment.dev, Environment.prod],
)
class ChatsDbDataSourceImpl extends ChatsDbDataSource {
  final Database _db;
  static const tableName = 'chats';

  ChatsDbDataSourceImpl(this._db);

  @override
  Future<List<ChatDao>> getAll() async {
    List<Map> maps = await _db.query(tableName);

    return maps.isNotEmpty ? maps.map((e) => ChatDao.fromMap(e)).toList() : [];
  }

  @override
  Future<void> update(ChatDao dao) async {
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
  Future<void> delete(String id) async {
    await _db.delete(tableName, where: '${ChatDao.columnId} = ?', whereArgs: [id]);
  }

  @override
  Future<void> deleteAll() async {
    await _db.delete(tableName);
  }
}
