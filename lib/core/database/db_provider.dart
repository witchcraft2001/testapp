// Dart imports:
import 'dart:async';

// Package imports:
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/features/business_cards/data/dao/business_card_dao.dart';
import 'package:terralinkapp/features/business_cards/data/data_sources/business_card_db_data_source.dart';
import 'package:terralinkapp/features/chats/data/dao/chat_dao.dart';
import 'package:terralinkapp/features/chats/data/dao/chat_message_dao.dart';
import 'package:terralinkapp/features/chats/data/data_sources/chat_messages_db_data_source.dart';
import 'package:terralinkapp/features/chats/data/data_sources/chats_db_data_source.dart';
import 'package:terralinkapp/features/likes/common/data/dao/api_like_dao.dart';
import 'package:terralinkapp/features/likes/common/data/data_sources/likes_db_data_source.dart';
import 'package:terralinkapp/features/profile_documents/data/dao/app_document_dao.dart';
import 'package:terralinkapp/features/profile_documents/data/data_sources/app_documents_db_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/dao/app_eas_attachment_dao/app_eas_attachment_dao.dart';
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart';

class DbProvider {
  static const _databaseName = 'tl.db';
  static const _databaseVersion = 7;

  static Future<Database> init() async {
    return await openDatabase(
      _databaseName,
      version: _databaseVersion,
      onCreate: _create,
      onUpgrade: _upgrade,
    );
  }

  static Future<void> _create(Database db, int version) async {
    await _createTableChats(db, version);
    await _createTableMessages(db, version);
    await _createTableBusinessCards(db, version);
    await _createTableAppDocuments(db, version);
    await _createTableEasDocuments(db, version);
    await _createTableLikesMy(db, version);
  }

  static Future<void> _upgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1) {
      // Создание недостающих таблиц
      await _createTableBusinessCards(db, newVersion);
      await _createTableAppDocuments(db, newVersion);
      await _createTableEasDocuments(db, newVersion);
      await _createTableLikesMy(db, newVersion);

      // Обновление существующих таблиц
      await _addColumnsVoteToMessages(db, newVersion);
    }

    if (oldVersion == 2) {
      // Создание недостающих таблиц
      await _createTableAppDocuments(db, newVersion);
      await _createTableEasDocuments(db, newVersion);
      await _createTableLikesMy(db, newVersion);

      // Обновление существующих таблиц
      await _addColumnsVoteToMessages(db, newVersion);
    }

    if (oldVersion == 3) {
      // Обновление App Documents
      // - name
      await _addColumnToAppDocumentsTempName(db, newVersion);
      await _setColumnToAppDocumentsTempName(db, newVersion);
      await _dropColumnFromAppDocumentsOldName(db, newVersion);
      await _renameColumnToAppDocumentsTempName(db, newVersion);

      // - path
      await _addColumnToAppDocumentsTempPath(db, newVersion);
      await _setColumnToAppDocumentsPath(db, newVersion);
      await _dropColumnFromAppDocumentsOldPath(db, newVersion);
      await _renameColumnToAppDocumentsTempPath(db, newVersion);

      // - search
      await _addColumnToAppDocumentsSearch(db, newVersion);
      await _setColumnToAppDocumentsSearch(db, newVersion);

      // Создание недостающих таблиц
      await _createTableEasDocuments(db, newVersion);
      await _createTableLikesMy(db, newVersion);

      // Обновление существующих таблиц
      await _addColumnsVoteToMessages(db, newVersion);
    }

    if (oldVersion == 4) {
      // Создание недостающих таблиц
      await _createTableEasDocuments(db, newVersion);
      await _createTableLikesMy(db, newVersion);

      // Обновление существующих таблиц
      await _addColumnsVoteToMessages(db, newVersion);
    }

    if (oldVersion == 5) {
      // Создание недостающих таблиц
      await _createTableLikesMy(db, newVersion);

      // Обновление существующих таблиц
      await _addColumnsVoteToMessages(db, newVersion);
    }

    if (oldVersion == 6) {
      // Добавление новых полей в таблицу сообщений
      await _addColumnsVoteToMessages(db, newVersion);
    }
  }

  // Добавление новых полей в таблицу сообщений чатов
  static Future _addColumnsVoteToMessages(Database db, int newVersion) async {
    await _addColumnToMessagesIsNeedVote(db, newVersion);
    await _addColumnToMessagesVote(db, newVersion);
    await _addColumnToMessagesVoteId(db, newVersion);
  }

  static Future _createTableChats(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE IF NOT EXISTS ${ChatsDbDataSourceImpl.tableName} (
      ${ChatDao.columnId} VARCHAR(36),
      ${ChatDao.columnTitle} VARCHAR(255)
);
''';
    await db.execute(sqlScript);
  }

  static Future _createTableMessages(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE IF NOT EXISTS ${MessagesDbDataSourceImpl.tableName} (
      ${ChatMessageDao.columnClientMessageId} VARCHAR(36),
      ${ChatMessageDao.columnMessageId} VARCHAR(36),
      ${ChatMessageDao.columnChatId} VARCHAR(36),
      ${ChatMessageDao.columnUsername} VARCHAR(128),
      ${ChatMessageDao.columnIsMine} INT,
      ${ChatMessageDao.columnIsUnread} INT,
      ${ChatMessageDao.columnText} TEXT,
      ${ChatMessageDao.columnDateTime} INT,
      ${ChatMessageDao.columnReadDateTime} INT,
      ${ChatMessageDao.columnIsNeedVote} INT,
      ${ChatMessageDao.columnVote} VARCHAR(144),
      ${ChatMessageDao.columnVoteId} VARCHAR(36)
);
''';
    await db.execute(sqlScript);
  }

  static Future _addColumnToMessagesIsNeedVote(
    Database db,
    int version,
  ) async {
    String sqlScript = '''
ALTER TABLE ${MessagesDbDataSourceImpl.tableName} ADD ${ChatMessageDao.columnIsNeedVote} INT;
''';
    await db.execute(sqlScript);
  }

  static Future _addColumnToMessagesVote(
    Database db,
    int version,
  ) async {
    String sqlScript = '''
ALTER TABLE ${MessagesDbDataSourceImpl.tableName} ADD ${ChatMessageDao.columnVote} VARCHAR(144);
''';
    await db.execute(sqlScript);
  }

  static Future _addColumnToMessagesVoteId(
    Database db,
    int version,
  ) async {
    String sqlScript = '''
ALTER TABLE ${MessagesDbDataSourceImpl.tableName} ADD ${ChatMessageDao.columnVoteId} VARCHAR(36);
''';
    await db.execute(sqlScript);
  }

  static Future _createTableBusinessCards(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE IF NOT EXISTS ${BusinessCardDbDataSourceImpl.tableName} (
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

  static Future _createTableAppDocuments(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE IF NOT EXISTS ${AppDocumentsDbDataSourceImpl.tableName} (
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

  static Future _createTableEasDocuments(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE IF NOT EXISTS ${TasksEasAttachmentsDbDataSourceImpl.tableName} (
      ${AppEasAttachmentDao.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${AppEasAttachmentDao.columnName} TEXT COLLATE NOCASE,
      ${AppEasAttachmentDao.columnPath} TEXT COLLATE NOCASE,
      ${AppEasAttachmentDao.columnTaskId} VARCHAR(16)
);
''';
    await db.execute(sqlScript);
  }

  static Future _createTableLikesMy(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE IF NOT EXISTS ${LikesDbDataSourceImpl.tableName} (
      ${ApiLikeDao.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${ApiLikeDao.columnLikeId} VARCHAR(64),
      ${ApiLikeDao.columnDate} VARCHAR(32),
      ${ApiLikeDao.columnContent} TEXT COLLATE NOCASE,
      ${ApiLikeDao.columnFromId} INTEGER,
      ${ApiLikeDao.columnFromTitleRu} VARCHAR(255),
      ${ApiLikeDao.columnFromTitleEn} VARCHAR(255),
      ${ApiLikeDao.columnFromPositionRu} VARCHAR(255),
      ${ApiLikeDao.columnFromPositionEn} VARCHAR(255),
      ${ApiLikeDao.columnFromMobile} VARCHAR(32),
      ${ApiLikeDao.columnFromEmail} VARCHAR(255),
      ${ApiLikeDao.columnFromLogin} VARCHAR(255),
      ${ApiLikeDao.columnFromPhoto} TEXT COLLATE NOCASE
);
''';
    await db.execute(sqlScript);
  }

  static Future _addColumnToAppDocumentsTempName(
    Database db,
    int version,
  ) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} ADD COLUMN tempname TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  static Future _addColumnToAppDocumentsTempPath(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} ADD COLUMN temppath TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  static Future _addColumnToAppDocumentsSearch(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} ADD ${AppDocumentDao.columnToSearch} TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  static Future _setColumnToAppDocumentsTempName(Database db, int version) async {
    String sqlScript = '''
UPDATE ${AppDocumentsDbDataSourceImpl.tableName} SET tempname = ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  static Future _setColumnToAppDocumentsPath(Database db, int version) async {
    String sqlScript = '''
UPDATE ${AppDocumentsDbDataSourceImpl.tableName} SET temppath = ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }

  static Future _setColumnToAppDocumentsSearch(Database db, int version) async {
    // Следует помнить, что LOWER() не умеет переводить кириллицу в нижний регистр
    String sqlScript = '''
UPDATE ${AppDocumentsDbDataSourceImpl.tableName} SET ${AppDocumentDao.columnToSearch} = LOWER(${AppDocumentDao.columnName});
''';
    await db.execute(sqlScript);
  }

  static Future _dropColumnFromAppDocumentsOldName(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} DROP COLUMN ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  static Future _dropColumnFromAppDocumentsOldPath(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} DROP COLUMN ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }

  static Future _renameColumnToAppDocumentsTempName(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} RENAME tempname to ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  static Future _renameColumnToAppDocumentsTempPath(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} RENAME temppath to ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }
}
