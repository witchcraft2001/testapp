// Dart imports:
import 'dart:async';

// Package imports:
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/features/business_cards/data/dao/business_card_dao.dart';
import 'package:terralinkapp/features/business_cards/data/data_sources/business_card_db_data_source.dart';
import 'package:terralinkapp/features/chat/data/dao/chat_dao.dart';
import 'package:terralinkapp/features/chat/data/dao/chat_message_dao.dart';
import 'package:terralinkapp/features/chat/data/data_sources/chats_db_data_source.dart';
import 'package:terralinkapp/features/chat/data/data_sources/messages_db_data_source.dart';
import 'package:terralinkapp/features/likes/common/data/dao/api_like_dao.dart';
import 'package:terralinkapp/features/likes/common/data/data_sources/likes_db_data_source.dart';
import 'package:terralinkapp/features/profile_documents/data/dao/app_document_dao.dart';
import 'package:terralinkapp/features/profile_documents/data/data_sources/app_documents_db_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/dao/app_eas_attachment_dao/app_eas_attachment_dao.dart';
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart';

class DbProvider {
  static const _databaseName = 'tl.db';
  static const _databaseVersion = 6;

  static Future<Database> init() async {
    return await openDatabase(
      _databaseName,
      version: _databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
    );
  }

  static Future<void> _onCreate(Database db, int version) async {
    await _onCreateChatsTable(db, version);
    await _onCreateMessagesTable(db, version);
    await _onCreateBusinessCardsTable(db, version);
    await _onCreateAppDocumentsTable(db, version);
    await _onCreateEasDocumentsTable(db, version);
    await _onCreateLikesMyTable(db, version);
  }

  static Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion == 1) {
      await _onCreateBusinessCardsTable(db, newVersion);
      await _onCreateAppDocumentsTable(db, newVersion);
      await _onCreateEasDocumentsTable(db, newVersion);
      await _onCreateLikesMyTable(db, newVersion);
    } else if (oldVersion == 2) {
      await _onCreateAppDocumentsTable(db, newVersion);
      await _onCreateEasDocumentsTable(db, newVersion);
      await _onCreateLikesMyTable(db, newVersion);
    } else if (oldVersion == 3) {
      // App Documents
      // - name
      await _onAddTempNameAppDocumentsTable(db, newVersion);
      await _onSetTempNameAppDocumentsTable(db, newVersion);
      await _onRemoveOldNameAppDocumentsTable(db, newVersion);
      await _onRenameTempNameAppDocumentsTable(db, newVersion);

      // - path
      await _onAddTempPathAppDocumentsTable(db, newVersion);
      await _onSetPathAppDocumentsTable(db, newVersion);
      await _onRemoveOldPathAppDocumentsTable(db, newVersion);
      await _onRenameTempPathAppDocumentsTable(db, newVersion);

      // - search
      await _onAddSearchAppDocumentsTable(db, newVersion);
      await _onSetSearchAppDocumentsTable(db, newVersion);

      // Other
      await _onCreateEasDocumentsTable(db, newVersion);
      await _onCreateLikesMyTable(db, newVersion);
    } else if (oldVersion == 4) {
      await _onCreateEasDocumentsTable(db, newVersion);
      await _onCreateLikesMyTable(db, newVersion);
    } else if (oldVersion == 5) {
      await _onCreateLikesMyTable(db, newVersion);
    }
  }

  static Future _onCreateChatsTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${ChatsDbDataSourceImpl.tableName} (
      ${ChatDao.columnId} VARCHAR(36),
      ${ChatDao.columnTitle} VARCHAR(255)
);
''';
    await db.execute(sqlScript);
  }

  static Future _onCreateMessagesTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${MessagesDbDataSourceImpl.tableName} (
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

  static Future _onCreateBusinessCardsTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${BusinessCardDbDataSourceImpl.tableName} (
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

  static Future _onCreateAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${AppDocumentsDbDataSourceImpl.tableName} (
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

  static Future _onCreateEasDocumentsTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${TasksEasAttachmentsDbDataSourceImpl.tableName} (
      ${AppEasAttachmentDao.columnId} INTEGER PRIMARY KEY AUTOINCREMENT,
      ${AppEasAttachmentDao.columnName} TEXT COLLATE NOCASE,
      ${AppEasAttachmentDao.columnPath} TEXT COLLATE NOCASE,
      ${AppEasAttachmentDao.columnTaskId} VARCHAR(16)
);
''';
    await db.execute(sqlScript);
  }

  static Future _onCreateLikesMyTable(Database db, int version) async {
    String sqlScript = '''
CREATE TABLE ${LikesDbDataSourceImpl.tableName} (
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

  static Future _onAddTempNameAppDocumentsTable(
    Database db,
    int version,
  ) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} ADD COLUMN tempname TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  static Future _onAddTempPathAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} ADD COLUMN temppath TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  static Future _onAddSearchAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} ADD ${AppDocumentDao.columnToSearch} TEXT COLLATE NOCASE;
''';
    await db.execute(sqlScript);
  }

  static Future _onSetTempNameAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
UPDATE ${AppDocumentsDbDataSourceImpl.tableName} SET tempname = ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  static Future _onSetPathAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
UPDATE ${AppDocumentsDbDataSourceImpl.tableName} SET temppath = ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }

  static Future _onSetSearchAppDocumentsTable(Database db, int version) async {
    // ToDo при этом следует помнить, что LOWER() не умеет переводить кириллицу нижний регистр
    String sqlScript = '''
UPDATE ${AppDocumentsDbDataSourceImpl.tableName} SET ${AppDocumentDao.columnToSearch} = LOWER(${AppDocumentDao.columnName});
''';
    await db.execute(sqlScript);
  }

  static Future _onRemoveOldNameAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} DROP COLUMN ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  static Future _onRemoveOldPathAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} DROP COLUMN ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }

  static Future _onRenameTempNameAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} RENAME tempname to ${AppDocumentDao.columnName};
''';
    await db.execute(sqlScript);
  }

  static Future _onRenameTempPathAppDocumentsTable(Database db, int version) async {
    String sqlScript = '''
ALTER TABLE ${AppDocumentsDbDataSourceImpl.tableName} RENAME temppath to ${AppDocumentDao.columnPath};
''';
    await db.execute(sqlScript);
  }
}
