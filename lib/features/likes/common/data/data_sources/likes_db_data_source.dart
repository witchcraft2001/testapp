// Package imports:
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

// Project imports:
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/likes/common/data/dao/api_like_dao.dart';

abstract class LikesDbDataSource {
  Future<int> create(ApiLikeDao dao);
  Future<List<ApiLikeDao>> getAll();
  Future<void> deleteAll();
}

@LazySingleton(
  as: LikesDbDataSource,
  env: [Environment.dev, Environment.prod],
)
class LikesDbDataSourceImpl extends LikesDbDataSource {
  final Database _db;
  final LogService _logService;

  static const tableName = 'likes_my';

  LikesDbDataSourceImpl(
    this._db,
    this._logService,
  );

  @override
  Future<int> create(ApiLikeDao dao) async {
    try {
      return await _db.insert(tableName, dao.toMap());
    } catch (_, stackTrace) {
      const exception = RepositoryException(type: TlExceptionType.repoDbInsert);

      await _logService.recordError(exception, stackTrace);
      throw exception;
    }
  }

  @override
  Future<List<ApiLikeDao>> getAll() async {
    try {
      final result = await _db.query(tableName);

      return result.isNotEmpty ? result.map(ApiLikeDao.fromMap).toList() : [];
    } catch (_, stackTrace) {
      const exception = RepositoryException();

      await _logService.recordError(exception, stackTrace);
      throw exception;
    }
  }

  @override
  Future<void> deleteAll() async {
    try {
      await _db.delete(tableName);
    } catch (_, stackTrace) {
      const exception = RepositoryException(type: TlExceptionType.repoDbDelete);

      await _logService.recordError(exception, stackTrace);
      throw exception;
    }
  }
}
