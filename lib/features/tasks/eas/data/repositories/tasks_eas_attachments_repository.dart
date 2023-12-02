// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/features/tasks/eas/data/data_source/tasks_eas_attachments_db_data_source.dart';
import 'package:terralinkapp/features/tasks/eas/data/entities/app_eas_attachment.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/app_eas_attachments/app_eas_attachment_dao_mapper.dart';
import 'package:terralinkapp/features/tasks/eas/data/mappers/app_eas_attachments/app_eas_attachment_mapper.dart';

abstract class TasksEasAttachmentsRepository {
  Future<AppEasAttachment> create(AppEasAttachment attachment);

  Future<List<AppEasAttachment>> getAll();
  Future<AppEasAttachment?> get(String filename);

  Future<void> delete(int id);
  Future<void> deleteAll();
}

@LazySingleton(
  as: TasksEasAttachmentsRepository,
  env: [Environment.dev, Environment.prod],
)
class TasksEasAttachmentsRepositoryImpl implements TasksEasAttachmentsRepository {
  final TasksEasAttachmentsDbDataSource _dbDataSource;

  TasksEasAttachmentsRepositoryImpl({
    required TasksEasAttachmentsDbDataSource dbDataSource,
  }) : _dbDataSource = dbDataSource;

  @override
  Future<AppEasAttachment> create(AppEasAttachment attachment) async {
    final id = await _dbDataSource.create(attachment.toDao());

    return attachment.copyWith(id: id);
  }

  @override
  Future<List<AppEasAttachment>> getAll() async {
    final listDao = await _dbDataSource.getAll();

    return listDao.isNotEmpty ? listDao.map((dao) => dao.toDomain()).toList() : [];
  }

  @override
  Future<AppEasAttachment?> get(String filename) async {
    final dao = await _dbDataSource.getByName(filename);

    return dao?.toDomain();
  }

  @override
  Future<void> delete(int id) {
    return _dbDataSource.delete(id);
  }

  @override
  Future<void> deleteAll() {
    return _dbDataSource.deleteAll();
  }
}
