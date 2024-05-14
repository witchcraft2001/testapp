// Package imports:
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/common/json_keys.dart';
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/http/api_routes.dart';
import 'package:terralinkapp/core/http/services/http_service.dart';
import 'package:terralinkapp/core/services/admin_panel_api_service.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/features/chats/data/dao/chat_query_example_dao.dart';
import 'package:terralinkapp/features/chats/data/entities/responses/chat_vote_dao.dart';

abstract class ChatMessagesRemoteDataSource {
  Future<String> sendVote(String messageId, String vote);
  Future<String> removeVote(String voteId);
  Future<List<ChatQueryExampleDao>> getQueryExamples();
}

@LazySingleton(
  as: ChatMessagesRemoteDataSource,
  env: [Environment.dev, Environment.prod],
)
class ChatMessagesRemoteDataSourceImpl extends ChatMessagesRemoteDataSource {
  final AdminPanelApiService _adminPanelService;
  final UserService _userService;
  final LogService _logService;

  ChatMessagesRemoteDataSourceImpl(
    this._adminPanelService,
    this._userService,
    this._logService,
  );

  @override
  Future<String> sendVote(String messageId, String vote) async {
    try {
      final fromUser = _userService.getUser()?.login;

      final params = FormData.fromMap({
        JsonKeys.id: messageId,
        JsonKeys.login: fromUser,
        JsonKeys.vote: vote,
      });

      final response = await _adminPanelService.request(
        url: ApiRoutes.chatMessageVote,
        method: Method.POST,
        params: params,
      );

      if (statusCodesSuccess.contains(response.statusCode)) {
        final result = ChatVoteDao.fromJson(response.data);

        return result.id;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }

  @override
  Future<String> removeVote(String voteId) async {
    try {
      final response = await _adminPanelService.request(
        url: '${ApiRoutes.chatMessageVote}$voteId/',
        method: Method.DELETE,
      );

      if (statusCodesSuccess.contains(response.statusCode)) {
        return '';
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }

  @override
  Future<List<ChatQueryExampleDao>> getQueryExamples() async {
    try {
      final response = await _adminPanelService.request(
        url: ApiRoutes.chatQueryExamples,
        method: Method.GET,
      );

      if (statusCodesSuccess.contains(response.statusCode)) {
        final List<ChatQueryExampleDao> examples =
            List.from(response.data).map((item) => ChatQueryExampleDao.fromJson(item)).toList();

        return examples;
      } else {
        throw const RepositoryException();
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      rethrow;
    }
  }
}
