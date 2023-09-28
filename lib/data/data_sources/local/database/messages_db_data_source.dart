// Package imports:
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/data/dao/chat_message_dao.dart';

abstract class MessagesDbDataSource {
  Future<List<ChatMessageDao>> getAllByChatId(String chatId);

  Future update(ChatMessageDao dao);

  Future<ChatMessageDao> create(ChatMessageDao dao);

  Future<ChatMessageDao?> getLastByChatId(String chatId);

  Future<int> getUnreadMessageCountByChatId(String chatId);

  Future<ChatMessageDao> createOrUpdate(ChatMessageDao dao);

  Future delete(String clientMessageId);

  Future resetUnreadMessagesByChatId(String chatId);

  Future deleteAll();
}

@LazySingleton(as: MessagesDbDataSource, env: [Environment.dev, Environment.prod])
class MessagesDbDataSourceImpl extends MessagesDbDataSource {
  final Database _db;
  static const tableName = 'messages';

  MessagesDbDataSourceImpl(this._db);

  @override
  Future<List<ChatMessageDao>> getAllByChatId(String chatId) async {
    final res = await _db.query(
      tableName,
      where: '${ChatMessageDao.columnChatId} = ?',
      whereArgs: [chatId],
    );

    return res.map((e) => ChatMessageDao.fromMap(e)).toList();
  }

  @override
  Future update(ChatMessageDao dao) async {
    await _db.update(
      tableName,
      dao.toMap(),
      where: '${ChatMessageDao.columnClientMessageId} = ?',
      whereArgs: [dao.clientMessageId],
    );
  }

  @override
  Future<ChatMessageDao> create(ChatMessageDao dao) async {
    await _db.insert(tableName, dao.toMap());

    return dao;
  }

  @override
  Future delete(String clientMessageId) async {
    await _db.delete(
      tableName,
      where: '${ChatMessageDao.columnClientMessageId} = ?',
      whereArgs: [clientMessageId],
    );
  }

  @override
  Future resetUnreadMessagesByChatId(String chatId) async {
    final res = await _db.query(
      tableName,
      where:
          '${ChatMessageDao.columnChatId} = ? AND ${ChatMessageDao.columnIsMine} = ? AND ${ChatMessageDao.columnIsUnread} = ?',
      whereArgs: [chatId, 0, 1],
    );
    final date = DateTime.now().toUtc().millisecondsSinceEpoch;
    final messages =
        res.map((e) => ChatMessageDao.fromMap(e).copy(isUnread: false, readDateTime: date));
    for (var element in messages) {
      await update(element);
    }
  }

  @override
  Future<ChatMessageDao> createOrUpdate(ChatMessageDao dao) async {
    final old = await getByClientMessageId(dao.clientMessageId);

    if (old == null) {
      return await create(dao);
    } else {
      final item = old.copy(
        messageId: dao.messageId,
        username: dao.username,
        isUnread: dao.isUnread,
      );
      await update(item);

      return item;
    }
  }

  Future<ChatMessageDao?> getByClientMessageId(String clientMessageId) async {
    final res = await _db.query(
      tableName,
      where: '${ChatMessageDao.columnClientMessageId} = ?',
      whereArgs: [clientMessageId],
    );

    return res.isNotEmpty ? ChatMessageDao.fromMap(res.first) : null;
  }

  @override
  Future<ChatMessageDao?> getLastByChatId(String chatId) async {
    final res = await _db.query(
      tableName,
      where: '${ChatMessageDao.columnChatId} = ?',
      whereArgs: [chatId],
      orderBy: '${ChatMessageDao.columnDateTime} DESC',
      limit: 1,
    );

    return res.isNotEmpty ? ChatMessageDao.fromMap(res.first) : null;
  }

  @override
  Future<int> getUnreadMessageCountByChatId(String chatId) async {
    return Sqflite.firstIntValue(await _db.rawQuery(
          'SELECT COUNT(*) FROM $tableName WHERE ${ChatMessageDao.columnChatId} = "$chatId" AND ${ChatMessageDao.columnIsMine} = 0 AND ${ChatMessageDao.columnIsUnread} = 1',
        )) ??
        0;
  }

  @override
  Future deleteAll() async {
    await _db.delete(tableName);
  }
}
