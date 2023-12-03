// Package imports:
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/dao/app_eas_attachment_dao/app_eas_attachment_dao.dart';

abstract class TasksEasAttachmentsDbDataSource {
  Future<int> create(AppEasAttachmentDao dao);

  Future<List<AppEasAttachmentDao>> getAll();
  Future<AppEasAttachmentDao?> getByName(String filename);

  Future<void> delete(int id);
  Future<void> deleteAll();
}

@LazySingleton(
  as: TasksEasAttachmentsDbDataSource,
  env: [Environment.dev, Environment.prod],
)
class TasksEasAttachmentsDbDataSourceImpl extends TasksEasAttachmentsDbDataSource {
  final Database _db;

  static const tableName = 'eas_documents';

  TasksEasAttachmentsDbDataSourceImpl(this._db);

  @override
  Future<List<AppEasAttachmentDao>> getAll() async {
    final result = await _db.query(tableName);

    return result.isNotEmpty ? result.map(AppEasAttachmentDao.fromMap).toList() : [];
  }

  @override
  Future<AppEasAttachmentDao?> getByName(String filename) async {
    AppEasAttachmentDao? attachment;

    final where = '${AppEasAttachmentDao.columnName} LIKE "$filename"';
    final result = await _db.query(tableName, where: where);

    if (result.isNotEmpty) attachment = AppEasAttachmentDao.fromMap(result.first);

    return attachment;
  }

  @override
  Future<int> create(AppEasAttachmentDao dao) async {
    return await _db.insert(tableName, dao.toMap());
  }

  @override
  Future<void> delete(int id) async {
    await _db.delete(tableName, where: '${AppEasAttachmentDao.columnId} = ?', whereArgs: [id]);
  }

  @override
  Future<void> deleteAll() async {
    await _db.delete(tableName);
  }
}
