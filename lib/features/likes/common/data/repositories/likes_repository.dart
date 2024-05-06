// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/features/likes/common/data/data_sources/likes_db_data_source.dart';
import 'package:terralinkapp/features/likes/common/data/data_sources/likes_remote_data_source.dart';
import 'package:terralinkapp/features/likes/common/data/mappers/api_like_dao_mapper.dart';
import 'package:terralinkapp/features/likes/common/data/mappers/api_likes_stat_dao_mapper.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_like.dart';
import 'package:terralinkapp/features/likes/common/domain/entities/api_likes_stat.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_admin_panel_api_base_url_use_case.dart';

abstract class LikesRepository {
  Stream<int> get stream;

  Future<ApiLikesStat> getStat();
  Future<List<ApiLike>> getMy();
  Future<NotificationSendingResult> send(String content, String toUser);
  Future<void> clearCache();

  void dispose();
}

@LazySingleton(
  as: LikesRepository,
  env: [Environment.dev, Environment.prod],
)
class LikesRepositoryImpl implements LikesRepository {
  final GetAdminPanelApiBaseUrlUseCase _getApiBaseUrlUseCase;
  final LikesDbDataSource _dbDataSource;
  final LikesRemoteDataSource _remoteDataSource;

  final StreamController<int> _statStreamController = StreamController<int>.broadcast();
  final Lock _lock = Lock();

  List<ApiLike> _current = [];
  ApiLikesStat _currentStat = const ApiLikesStat();
  DateTime? _lastUpdates;

  LikesRepositoryImpl(
    this._getApiBaseUrlUseCase,
    this._dbDataSource,
    this._remoteDataSource,
  );

  @override
  Stream<int> get stream => _statStreamController.stream;

  @override
  Future<ApiLikesStat> getStat() async {
    try {
      final stat = await _remoteDataSource.getStat();

      // Получение статистики на основе лайков в репозитории/БД:
      // - если статистика полученных лайков по какой-то причине нулевая
      if (stat.receiveLikes == 0) {
        // то попытка ее вычисления на основе данных из приложения
        await _getLocalStatReceivedLikes();
      } else {
        _currentStat = stat.toDomain();

        // - обновление статистики в "Профиле" (необходимо при переключении окружений)
        _statStreamController.add(_currentStat.receiveLikes);
      }

      return _currentStat;
    } catch (_) {
      // - если при запросе данных с сервера возникла ошибка
      await _getLocalStatReceivedLikes();

      return _currentStat;
    }
  }

  @override
  Future<List<ApiLike>> getMy() async {
    final isNoData = _current.isEmpty && _lastUpdates == null;
    final url = _getApiBaseUrlUseCase();

    // Проверка наличия данных в репозитории:
    // - если данных еще нет, то запрос их из БД
    if (isNoData) {
      final likesFromDb = await _dbDataSource.getAll();
      final isActualData = _currentStat.receiveLikes == likesFromDb.length;

      // Если статистика равна количеству в БД и БД не пуста,
      // - то отображение лайков из БД
      if (isActualData && likesFromDb.isNotEmpty) {
        _current.addAll(likesFromDb.map((e) => e.toDomain(url)));

        return _current;
      }

      // - в противном случае запрос данных с сервера и обновление их в БД
      await _lock.synchronized(() async {
        final likesFromApi = await _remoteDataSource.getMy();

        await _dbDataSource.deleteAll();

        for (final like in likesFromApi) {
          _dbDataSource.create(like);
          _current.add(like.toDomain(url));
        }

        _lastUpdates = DateTime.now();
        _currentStat = _currentStat.copyWith(receiveLikes: likesFromApi.length);
        _statStreamController.add(_currentStat.receiveLikes);
      });
    }

    return _current;
  }

  @override
  Future<NotificationSendingResult> send(String content, String toUser) async {
    final result = await _remoteDataSource.send(content, toUser);

    return result;
  }

  @override
  Future<void> clearCache() async {
    _current = [];
    _lastUpdates = null;

    await _dbDataSource.deleteAll();
  }

  @override
  void dispose() {
    _statStreamController.close();
  }

  Future<void> _getLocalStatReceivedLikes() async {
    // Проверка наличия статистики в репозитории:
    // - если статистика полученных лайков уже не нулевая, то отдается ее значение
    if (_currentStat.receiveLikes != 0) return;

    // Проверка наличия данных в репозитории:
    final isData = _current.isNotEmpty && _lastUpdates != null;

    // - если данные есть, то формирование статистики на их основе
    if (isData) {
      _currentStat = ApiLikesStat(receiveLikes: _current.length);

      return;
    }

    // - если же данных еще нет, то формирование статистики на основе БД
    final likesFromDb = await _dbDataSource.getAll();

    _currentStat = ApiLikesStat(receiveLikes: likesFromDb.length);
  }
}
