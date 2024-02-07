// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/enums.dart';
import 'package:terralinkapp/core/common/json_keys.dart';
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/admin_panel_api_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/features/likes/common/data/dao/api_like_dao.dart';
import 'package:terralinkapp/features/likes/common/data/dao/api_likes_stats_dao.dart';

abstract class LikesRemoteDataSource {
  Future<ApiLikesStatDao> getStat();
  Future<List<ApiLikeDao>> getMy();
  Future<NotificationSendingResult> send(String content, String toUser);
}

@LazySingleton(
  as: LikesRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class LikesRemoteDataSourceImpl extends LikesRemoteDataSource {
  final AdminPanelApiService _adminPanelService;
  final UserService _userService;
  final LogService _logService;

  LikesRemoteDataSourceImpl(
    this._adminPanelService,
    this._userService,
    this._logService,
  );

  @override
  Future<ApiLikesStatDao> getStat() async {
    try {
      final toUser = _userService.getUser()?.login;

      final response = await _adminPanelService.request(
        url: ApiRoutes.likesstat,
        method: Method.GET,
        params: {
          JsonKeys.toPortalUser: toUser,
        },
      );

      if (response.statusCode == 200) {
        final stats = ApiLikesStatDao.fromJson(response.data);

        return stats;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }

  @override
  Future<List<ApiLikeDao>> getMy() async {
    try {
      final toUser = _userService.getUser()?.login;

      final response = await _adminPanelService.request(
        url: ApiRoutes.likes,
        method: Method.GET,
        params: {
          JsonKeys.toPortalUser: toUser,
        },
      );

      if (response.statusCode == 200) {
        final List<ApiLikeDao> result =
            List.from(response.data).map((item) => ApiLikeDao.fromJson(item)).toList();

        return result;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }

  @override
  Future<NotificationSendingResult> send(String content, String toUser) async {
    try {
      final fromUser = _userService.getUser()?.login;

      if (fromUser?.toLowerCase() == toUser.toLowerCase()) {
        throw const RepositoryException(type: TlExceptionType.repoLikesYourself);
      }

      final params = FormData.fromMap({
        JsonKeys.fromPortalUser: fromUser,
        JsonKeys.toPortalUser: toUser,
        JsonKeys.content: content,
      });

      final response = await _adminPanelService.request(
        url: ApiRoutes.likes,
        method: Method.POST,
        params: params,
      );

      if (response.statusCode == 201) {
        return NotificationSendingResult.success;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
