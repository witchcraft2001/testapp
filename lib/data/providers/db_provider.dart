// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/data/dao/app_document_dao.dart';
import 'package:terralinkapp/data/dao/business_card_dao.dart';
import 'package:terralinkapp/data/dao/chat_dao.dart';
import 'package:terralinkapp/data/dao/chat_message_dao.dart';
import 'package:terralinkapp/data/repositories/local/business_card_db_repository.dart';
import 'package:terralinkapp/data/repositories/local/chats_db_repository.dart';
import 'package:terralinkapp/data/repositories/local/documents_db_repository.dart';
import 'package:terralinkapp/data/repositories/local/messages_db_repository.dart';

abstract class DbProvider {
  Future<Database> get db;

  Future<Database> initDatabase();

  Future<void> closeDatabase();
}

@LazySingleton(as: DbProvider, env: [Environment.dev, Environment.prod])
class DbProviderImpl extends DbProvider {
  static const _databaseName = 'tl.db';
  static const _databaseVersion = 4;

  Database? _db;
  final lock = Lock();

  @override
  Future<void> closeDatabase() async {
    await _db?.close();
  }

  @override
  Future<Database> get db async {
    return _db ??= await initDatabase();
  }

  @override
  Future<Database> initDatabase() async {
    return _db ??= await lock.synchronized<Database>(() async => await openDatabase(
          _databaseName,
          version: _databaseVersion,
          onCreate: _onCreate,
          onUpgrade: _onUpgrade,
        ));
  }

  Future<void> _onCreate(Database db, int version) async {
    await _onCreateChatsTable(db, version);
    await _onCreateMessagesTable(db, version);
    await _onCreateBusinessCardsTable(db, version);
    await _onCreateAppDocumentsTable(db, version);
  }

  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1) {
      await _onCreateBusinessCardsTable(db, newVersion);
      await _onCreateAppDocumentsTable(db, newVersion);
    } else if (oldVersion == 2) {
      await _onCreateAppDocumentsTable(db, newVersion);
    } else if (oldVersion == 3) {
      // name
      await _onAddTempNameAppDocumentsTable(db, newVersion);
      await _onSetTempNameAppDocumentsTable(db, newVersion);
      await _onRemoveOldNameAppDocumentsTable(db, newVersion);
      await _onRenameTempNameAppDocumentsTable(db, newVersion);

      // path
      await _onAddTempPathAppDocumentsTable(db, newVersion);
      await _onSetPathAppDocumentsTable(db, newVersion);
      await _onRemoveOldPathAppDocumentsTable(db, newVersion);
      await _onRenameTempPathAppDocumentsTable(db, newVersion);

      // search
      await _onAddSearchAppDocumentsTable(db, newVersion);
      await _onSetSearchAppDocumentsTable(db, newVersion);
    }
  }

  Future _onCreateChatsTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${ChatsDbRepositoryImpl.tableName} (
      ${ChatDao.columnId} VARCHAR(36),
      ${ChatDao.columnTitle} VARCHAR(255)
);
''';
    await db.execute(sqlScript);
  }

  Future _onCreateMessagesTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${MessagesDbRepositoryImpl.tableName} (
      ${ChatMessageDao.columnClientMessageId} VARCHAR(36),
      ${ChatMessageDao.columnMessageId} VARCHAR(36),
      ${ChatMessageDao.columnChatId} VARCHAR(36),
      ${ChatMessageDao.columnUsername} VARCHAR(128),
      ${ChatMessageDao.columnIsMine} INT,
      ${ChatMessageDao.columnIsUnread} INT,
      ${ChatMessageDao.columnText} TEXT,
      ${ChatMessageDao.columnDateTime} INT,
      ${ChatMessageDao.columnReadDateTime} INT
);
''';
    await db.execute(sqlScript);
  }

  Future _onCreateBusinessCardsTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${BusinessCardDbRepositoryImpl.tableName} (
      ${BusinessCardDao.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${BusinessCardDao.columnFirstName} VARCHAR(32),
      ${BusinessCardDao.columnLastName} VARCHAR(32),
      ${BusinessCardDao.columnCompany} VARCHAR(64),
      ${BusinessCardDao.columnPosition} VARCHAR(64),
      ${BusinessCardDao.columnPhone} VARCHAR(24),
      ${BusinessCardDao.columnEmail} VARCHAR(255),
      ${BusinessCardDao.columnLocale} VARCHAR(16),
      ${BusinessCardDao.columnTime} INTEGER
);
''';
    await db.execute(sqlScript);
  }

  Future _onCreateAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${AppDocumentsDbRepositoryImpl.tableName} (
      ${AppDocumentDao.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${AppDocumentDao.columnName} TEXT COLLATE NOCASE,
      ${AppDocumentDao.columnToSearch} TEXT COLLATE NOCASE,
      ${AppDocumentDao.columnPath} TEXT COLLATE NOCASE,
      ${AppDocumentDao.columnDirectory} VARCHAR(64),
      ${AppDocumentDao.columnDateTime} INTEGER,
      ${AppDocumentDao.columnSize} INTEGER,
      ${AppDocumentDao.columnExtension} VARCHAR(16)
);
''';
    await db.execute(sqlScript);
  }

  Future _onAddTempNameAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbRepositoryImpl.tableName} ADD COLUMN tempname TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  Future _onAddTempPathAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbRepositoryImpl.tableName} ADD COLUMN temppath TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  Future _onAddSearchAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbRepositoryImpl.tableName} ADD ${AppDocumentDao.columnToSearch} TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  Future _onSetTempNameAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
UPDATE ${AppDocumentsDbRepositoryImpl.tableName} SET tempname = ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  Future _onSetPathAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
UPDATE ${AppDocumentsDbRepositoryImpl.tableName} SET temppath = ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }

  Future _onSetSearchAppDocumentsTable(Database db, int version) async {
    // ToDo при этом следует помнить, что LOWER() не умеет переводить кириллицу нижний регистр
    String sqlScript = '''
UPDATE ${AppDocumentsDbRepositoryImpl.tableName} SET ${AppDocumentDao.columnToSearch} = LOWER(${AppDocumentDao.columnName});
''';
    await db.execute(sqlScript);
  }

  Future _onRemoveOldNameAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbRepositoryImpl.tableName} DROP COLUMN ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  Future _onRemoveOldPathAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbRepositoryImpl.tableName} DROP COLUMN ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }

  Future _onRenameTempNameAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbRepositoryImpl.tableName} RENAME tempname to ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  Future _onRenameTempPathAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbRepositoryImpl.tableName} RENAME temppath to ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }
}
