// Dart imports:
import 'dart:async';
import 'dart:convert';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:synchronized/synchronized.dart';

// Project imports:
import 'package:terralinkapp/core/common/json_keys.dart';
import 'package:terralinkapp/core/exceptions/repository_exception.dart';
import 'package:terralinkapp/core/exceptions/tl_exception.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/core/services/user_service/user_service.dart';
import 'package:terralinkapp/core/services/websocket_service.dart';
import 'package:terralinkapp/features/chats/data/dao/chat_dao.dart';
import 'package:terralinkapp/features/chats/data/data_sources/chat_messages_db_data_source.dart';
import 'package:terralinkapp/features/chats/data/data_sources/chat_messages_remote_data_source.dart';
import 'package:terralinkapp/features/chats/data/data_sources/chats_db_data_source.dart';
import 'package:terralinkapp/features/chats/data/entities/chat_actions_dao.dart';
import 'package:terralinkapp/features/chats/data/entities/requests/action_request.dart';
import 'package:terralinkapp/features/chats/data/entities/requests/form_request.dart';
import 'package:terralinkapp/features/chats/data/entities/responses/chat_feed_response.dart';
import 'package:terralinkapp/features/chats/data/entities/responses/chat_info_response.dart';
import 'package:terralinkapp/features/chats/data/entities/responses/form_message_response.dart';
import 'package:terralinkapp/features/chats/data/entities/responses/menu_chat_message_response.dart';
import 'package:terralinkapp/features/chats/data/mappers/chat_dao_mapper.dart';
import 'package:terralinkapp/features/chats/data/mappers/chat_feed_mapper.dart';
import 'package:terralinkapp/features/chats/data/mappers/chat_info_mapper.dart';
import 'package:terralinkapp/features/chats/data/mappers/chat_message_mapper.dart';
import 'package:terralinkapp/features/chats/data/mappers/chat_query_example_category_dao_mapper.dart';
import 'package:terralinkapp/features/chats/data/mappers/form_message_mapper.dart';
import 'package:terralinkapp/features/chats/data/mappers/menu_chat_message_mapper.dart';
import 'package:terralinkapp/features/chats/data/providers/uuid_generator.dart';
import 'package:terralinkapp/features/chats/data/repositories/chats_repository.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_feed.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_info.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message.dart';
import 'package:terralinkapp/features/chats/domain/entities/chat_message_vote.dart';
import 'package:terralinkapp/features/chats/domain/entities/query_examples/chat_query_example.dart';

@LazySingleton(
  as: ChatsRepository,
  env: [Environment.dev, Environment.prod],
)
class ChatsRemoteRepository extends ChatsRepository {
  final WebsocketService _websocketService;
  final ChatsDbDataSource _chatsDbRepository;
  final ChatMessagesDbDataSource _messagesDbRepository;
  final ChatMessagesRemoteDataSource _messagesRemoteDataSource;
  final UuidGenerator _uuid;
  final UserService _userService;
  final LogService _logService;

  final List<ChatInfoResponse> _chats = [];
  final Map<String, List<ChatMessage>> _messages = {};
  final BehaviorSubject<List<ChatFeed>> _chatListSubject = BehaviorSubject();
  final BehaviorSubject<String> _chatListUpdatesSubject = BehaviorSubject();
  final PublishSubject<String> _chatMessagesUpdatesSubject = PublishSubject();
  String? lastChatId;

  final lock = Lock();

  ChatsRemoteRepository(
    this._websocketService,
    this._chatsDbRepository,
    this._messagesDbRepository,
    this._messagesRemoteDataSource,
    this._uuid,
    this._userService,
    this._logService,
  ) {
    _websocketService.stream.listen((_eventListener));
    _chatListUpdatesSubject
        .debounceTime(const Duration(milliseconds: 300))
        .listen((event) => _updateChatFeed());
  }

  Future<void> _eventListener(event) async {
    try {
      final json = jsonDecode(event);

      if (json is List<dynamic>) {
        for (final element in json) {
          await _handleChatActions(element);
        }
      } else {
        await _handleChatActions(json);
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);

      if (kDebugMode) print(e);
    }
  }

  Future<void> _handleChatActions(Map<String, dynamic> json) async {
    await lock.synchronized(() async {
      final action = json['action'].toString().toLowerCase();

      switch (action) {
        case ChatActionsDao.createChat:
          _handleActionCreateChat(json);

        case ChatActionsDao.createMessage:
          _handleActionCreateMessage(json);

        case ChatActionsDao.createMenu:
          _handleActionCreateMenu(json);

        case ChatActionsDao.createForm:
          _handleActionCreateForm(json);

        default:
          _logService.log('Unknown action: $action');
      }
    });
  }

  @override
  Future<List<ChatFeed>> getAllChats() async {
    // ToDo получение всех чатов из БД отключено. Отображаются только чаты, прихедшие с сервера
    // final old = [..._chats];
    // final chats = await _chatsDbRepository.getAll();

    // for (final chat in chats) {
    //   if (!_chats.any((ch) => ch.id == chat.id)) {
    //     _chats.add(chat.toChatInfoResponse());
    //   }
    // }

    // if (!listEquals(old, _chats)) {
    //   _chatListChangesNotify(_chats.lastOrNull?.id ?? '');
    // }

    return (await _getChatFeed()).map((e) => e.toDomain()).toList();
  }

  @override
  Future<void> requestChats() async {
    final action = GetChatsActionRequest().toJson();

    await _websocketService.transmit(jsonEncode(action));
  }

  @override
  Future<ChatInfo> getChatInfo(String id) async {
    final chat = await _chatsDbRepository.getById(id);

    if (chat != null) {
      return chat.toChatInfoResponse().toDomain();
    }

    throw RepositoryException(
      message: 'Chat $id is not found',
      type: TlExceptionType.repoChatNotFound,
    );
  }

  @override
  Future<List<ChatMessage>> getMessagesByChatId(String id) async {
    if (!_messages.keys.contains(id)) {
      final messages = (await _messagesDbRepository.getAllByChatId(id)).map((e) => e.toDomain());
      _messages[id] = messages.toList();
    }

    final list = _messages[id];

    return Future.value(list ?? []);
  }

  @override
  Future<void> sendMenuItem(String chatId, String menuId, String value) async {
    if (!_messages.keys.contains(chatId)) {
      _messages[chatId] = [];
    }

    final list = _messages[chatId];
    final menuMessage = list?.lastWhere((element) => element.clientMessageId == menuId);

    if (menuMessage != null) {
      final index = list?.indexOf(menuMessage);

      if (index != null && index >= 0) {
        final newItem = menuMessage.copyWith(activeButton: value);
        list?[index] = newItem;
      }
    }

    final action = ForceMenuActionRequest(menuId: menuId, valueId: value, chatId: chatId).toJson();

    _websocketService.transmit(jsonEncode(action));
    lastChatId = chatId;

    _chatMessagesUpdatesNotify(chatId);
    _chatListChangesNotify(chatId);
  }

  @override
  Future<void> sendMessage(String chatId, String text) async {
    if (!_messages.keys.contains(chatId)) {
      _messages[chatId] = [];
    }
    final list = _messages[chatId];

    final msg = ChatMessage(
      clientMessageId: _uuid.generate(),
      username: _userService.getUser()?.name ?? '',
      text: text,
      dateTime: DateTime.now().toUtc(),
      chatId: chatId,
      isNeedVote: false,
      isMine: true,
      isUnread: true,
      menu: List.empty(),
    );

    await _messagesDbRepository.create(msg.toDao());

    list?.add(msg);
    list?.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    final action = msg.toActionRequest().toJson();

    _websocketService.transmit(jsonEncode(action));
    lastChatId = chatId;
    _chatListChangesNotify(chatId);
  }

  Future<ChatMessage?> getLastMessageByChatId(String chatId) async {
    return _messages.keys.contains(chatId)
        ? _messages[chatId]!.lastOrNull
        : (await _messagesDbRepository.getLastByChatId(chatId))?.toDomain();
  }

  Future<int> getUnreadMessageCountByChatId(String chatId) async {
    return _messages.keys.contains(chatId)
        ? _messages[chatId]!.where((element) => !element.isMine && element.isUnread).length
        : await _messagesDbRepository.getUnreadMessageCountByChatId(chatId);
  }

  void _chatListChangesNotify(String chatId) {
    _chatListUpdatesSubject.add(chatId);
  }

  void _chatMessagesUpdatesNotify(String chatId) {
    _chatMessagesUpdatesSubject.add(chatId);
    _chatListChangesNotify(chatId);
  }

  Future<List<ChatFeedResponse>> _getChatFeed() async {
    final list = List<ChatFeedResponse>.empty(growable: true);

    for (final e in _chats) {
      final lastMessage = await getLastMessageByChatId(e.id);
      final unreadCount = await getUnreadMessageCountByChatId(e.id);

      list.add(ChatFeedResponse(
        e.id,
        e.avatar,
        e.name,
        lastMessage?.text,
        lastMessage?.dateTime,
        unreadCount,
        e.serviceId,
      ));
    }

    list.sort((a, b) {
      final first = a.lastMessageTime ?? DateTime.fromMillisecondsSinceEpoch(0);
      final second = b.lastMessageTime ?? DateTime.fromMillisecondsSinceEpoch(0);

      return second.compareTo(first);
    });

    return list;
  }

  void _updateChatFeed() async {
    _chatListSubject.add((await _getChatFeed()).map((e) => e.toDomain()).toList());
  }

  @override
  BehaviorSubject<List<ChatFeed>> get chatListStream => _chatListSubject;

  @override
  Subject<String> get chatMessagesUpdatesStream => _chatMessagesUpdatesSubject;

  @override
  Future<void> resetUnreadMessages(String chatId) async {
    await _messagesDbRepository.resetUnreadMessagesByChatId(chatId);

    if (_messages.keys.contains(chatId)) {
      final list = _messages[chatId];
      final unread = list
              ?.where((element) => !element.isMine && element.isUnread)
              .map((e) => e.copyWith(isUnread: false))
              .toList() ??
          [];

      if (list != null) {
        for (final element in unread) {
          _updateMessage(list, element);
        }

        if (unread.isNotEmpty) {
          _chatMessagesUpdatesNotify(chatId);
        }
      }
    }
  }

  void _updateMessage(List<ChatMessage> list, ChatMessage message) {
    final index = list.indexWhere(
      (e) => e.messageId == message.messageId && e.clientMessageId == message.clientMessageId,
    );

    if (index >= 0) list[index] = message;
  }

  @override
  Future<List<ChatFeed>> getChatsWithUnreadMessages() async {
    await getAllChats();

    final result = (await _getChatFeed())
        .where((e) => e.unreadMessagesCount > 0)
        .map((e) => e.toDomain())
        .toList();

    return result;
  }

  @override
  Future<void> removeMessageById(String chatId, String clientMessageId) async {
    if (_messages.keys.contains(chatId)) {
      final list = _messages[chatId];
      list?.removeWhere((element) => element.clientMessageId == clientMessageId);

      _chatMessagesUpdatesNotify(chatId);
    }
  }

  @override
  Future<void> sendForm(String chatId, FormRequest form) async {
    final action = SendFormActionRequest(chatId, DateTime.now().toUtc(), form).toJson();

    await _websocketService.transmit(jsonEncode(action));
    lastChatId = chatId;

    _chatMessagesUpdatesNotify(chatId);
    _chatListChangesNotify(chatId);
  }

  @override
  Future<void> vote(
    String chatId,
    ChatMessage message,
    ChatMessageVote? vote,
  ) async {
    // Выбор чата
    if (_messages.keys.contains(chatId)) {
      final list = _messages[chatId];

      // Если чат содержит сообщения, то:
      if (list != null) {
        String? voteId;

        // Если реакции еще нет, то отправка ее
        if (vote != null) {
          voteId = await _messagesRemoteDataSource.sendVote(message.clientMessageId, vote.value);
        }

        // Если реакция есть, то удаление ее
        if (vote == null && message.voteId != null) {
          voteId = await _messagesRemoteDataSource.removeVote(message.voteId!);
        }

        // Если id реакции получен (или пуст в случае удаления)
        if (voteId != null) {
          // Обновление сообщения данными оценки
          final msg = message.copyWith(
            vote: vote?.value ?? '',
            voteId: voteId,
          );

          // Обновление сообщения в БД
          await _messagesDbRepository.update(msg.toDao());

          // Обновление сообщения в чате
          _updateMessage(list, msg);
        }
      }
    }
  }

  @override
  Future<void> loginUser() async {
    await _websocketService.loginUser();
  }

  @override
  Future<void> logoutUser() async {
    _websocketService.logoutUser();

    _chats.clear();
    _messages.clear();
    lastChatId = null;
  }

  @override
  Future<void> clearHistory() async {
    _chats.clear();
    _messages.clear();
    await _messagesDbRepository.deleteAll();
    await _chatsDbRepository.deleteAll();
    lastChatId = null;
  }

  @override
  Future<void> clearHistoryAndLogout() async {
    await clearHistory();
    _updateChatFeed();

    _websocketService.logoutUser();
  }

  bool _getIsNeedVote(Map<String, dynamic> json) {
    if (json.containsKey(JsonKeys.llmData)) {
      final Map<String, dynamic>? llmData = json[JsonKeys.llmData];

      return llmData != null && llmData.containsKey(JsonKeys.needVote)
          ? llmData[JsonKeys.needVote]
          : false;
    }

    return false;
  }

  Future<void> _handleActionCreateChat(Map<String, dynamic> json) async {
    if (json.containsKey(JsonKeys.id)) {
      final id = json[JsonKeys.id];
      final title = json[JsonKeys.title];

      final old = await _chatsDbRepository.getById(id);

      if (old == null) {
        await _chatsDbRepository.create(ChatDao(id, title));
      } else if (old.title != title) {
        await _chatsDbRepository.update(ChatDao(id, title));
      }

      _chats.removeWhere((chat) => chat.id == id);
      _chats.add(ChatInfoResponse(id, null, title, true, json['service_id']));
      _chatListChangesNotify(id);

      if (kDebugMode) print('${ChatActionsDao.createChat} handled $id');
    }
  }

  Future<void> _handleActionCreateMessage(Map<String, dynamic> json) async {
    final clientMessageId = json[JsonKeys.clientMessageId] ?? json[JsonKeys.messageId];
    final messageId = json[JsonKeys.messageId] ?? json[JsonKeys.clientMessageId];
    final chatId = json[JsonKeys.chatId];

    final msg = ChatMessage(
      clientMessageId: clientMessageId,
      chatId: chatId,
      messageId: messageId,
      username: json[JsonKeys.username] ?? '',
      isNeedVote: _getIsNeedVote(json),
      isMine: false,
      isUnread: true,
      menu: List.empty(),
      text: json[JsonKeys.text],
      dateTime: DateTime.now().toUtc(),
    ); //DateTime.tryParse(json['ctime']) ?? DateTime.now().toUtc());

    await _messagesDbRepository.createOrUpdate(msg.toDao());

    if (_messages.keys.contains(chatId)) {
      final list = _messages[chatId];

      if (list != null &&
          list.any((e) => e.clientMessageId == clientMessageId || e.messageId == messageId)) {
        final item = list.firstWhere((element) =>
            element.clientMessageId == clientMessageId || element.messageId == messageId);

        final index = list.indexOf(item);
        final newItem = item.copyWith(
          messageId: messageId,
          dateTime: msg.dateTime, //DateTime.tryParse(json['ctime']) ?? DateTime.now().toUtc(),
        );

        list[index] = newItem;
        _chatMessagesUpdatesNotify(chatId);

        if (kDebugMode) print('${ChatActionsDao.createMessage} handled $messageId');
      } else {
        list?.add(msg);
        _chatMessagesUpdatesNotify(chatId);
      }
    } else {
      _messages[chatId] = [msg];
      _chatMessagesUpdatesNotify(chatId);

      if (kDebugMode) print('${ChatActionsDao.createMessage} handled $messageId');
    }
  }

  Future<void> _handleActionCreateMenu(Map<String, dynamic> json) async {
    if (lastChatId != null) {
      final chatId = json[JsonKeys.chatId];

      final menuMessage = ChatMessage(
        clientMessageId: json[JsonKeys.id],
        messageId: json[JsonKeys.id],
        chatId: chatId,
        username: ChatActionsDao.createMenu,
        isNeedVote: _getIsNeedVote(json),
        isMine: false,
        isUnread: true,
        text: json[JsonKeys.title],
        menu: MenuChatMessageResponseList.fromMappedJson(json[JsonKeys.menu])
            .list
            .map((e) => e.toDomain())
            .toList(),
        dateTime: DateTime.now().toUtc(),
      ); // DateTime.tryParse(json['ctime']) ?? DateTime.now().toUtc());

      final list = _messages[chatId];

      if (list != null) {
        list.add(menuMessage);
        _chatMessagesUpdatesNotify(chatId);

        if (kDebugMode) print('${ChatActionsDao.createMenu} handled ${json[JsonKeys.id]}');
      }
    }
  }

  Future<void> _handleActionCreateForm(Map<String, dynamic> json) async {
    final chatId = json[JsonKeys.chatId];
    final form = FormMessageResponse.fromMappedJson(json[JsonKeys.form], json[JsonKeys.title]);

    final formMessage = ChatMessage(
      clientMessageId: form.id,
      messageId: form.id,
      chatId: chatId,
      username: ChatActionsDao.createForm,
      isNeedVote: _getIsNeedVote(json),
      isMine: false,
      isUnread: true,
      text: json[JsonKeys.title],
      form: form.toDomain(),
      menu: List.empty(),
      dateTime: DateTime.now().toUtc(),
    ); // DateTime.tryParse(json['ctime']) ?? DateTime.now().toUtc());

    final list = _messages[chatId];

    if (list != null) {
      list.add(formMessage);
      _chatMessagesUpdatesNotify(chatId);

      if (kDebugMode) print('${ChatActionsDao.createForm} handled ${formMessage.messageId}');
    }
  }

  @override
  Future<List<ChatQueryExample>> getQueryExamples() async {
    final examples = await _messagesRemoteDataSource.getQueryExamples();

    return examples.map((n) => n.toDomain()).toList();
  }
}
