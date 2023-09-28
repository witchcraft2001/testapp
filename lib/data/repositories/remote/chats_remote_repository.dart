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
import 'package:terralinkapp/data/dao/chat_dao.dart';
import 'package:terralinkapp/data/data_sources/local/database/chats_db_data_source.dart';
import 'package:terralinkapp/data/data_sources/local/database/messages_db_data_source.dart';
import 'package:terralinkapp/data/mappers/chat_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/chat_feed_mapper.dart';
import 'package:terralinkapp/data/mappers/chat_info_mapper.dart';
import 'package:terralinkapp/data/mappers/chat_message_mapper.dart';
import 'package:terralinkapp/data/mappers/form_message_mapper.dart';
import 'package:terralinkapp/data/mappers/menu_chat_message_mapper.dart';
import 'package:terralinkapp/data/models/requests/action_request.dart';
import 'package:terralinkapp/data/models/requests/form_request.dart';
import 'package:terralinkapp/data/models/responses/chat_feed_response.dart';
import 'package:terralinkapp/data/models/responses/chat_info_response.dart';
import 'package:terralinkapp/data/models/responses/form_message_response.dart';
import 'package:terralinkapp/data/models/responses/menu_chat_message_response.dart';
import 'package:terralinkapp/data/providers/uuid_generator.dart';
import 'package:terralinkapp/data/repositories/exceptions/repository_exception.dart';
import 'package:terralinkapp/data/services/log_service.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/data/services/websocket_service.dart';
import 'package:terralinkapp/domain/chat_feed.dart';
import 'package:terralinkapp/domain/chat_info.dart';
import 'package:terralinkapp/domain/chat_message.dart';
import 'package:terralinkapp/domain/repositories/chats_repository.dart';

@LazySingleton(as: ChatsRepository, env: [Environment.dev, Environment.prod])
class ChatsRemoteRepository extends ChatsRepository {
  final WebsocketService _websocketService;
  final ChatsDbDataSource _chatsDbRepository;
  final UuidGenerator _uuid;
  final UserService _userService;
  final MessagesDbDataSource _messagesDbRepository;
  final LogService _logService;

  final List<ChatInfoResponse> _chats = [];
  final Map<String, List<ChatMessage>> _messages = {};
  final BehaviorSubject<List<ChatFeed>> _chatListSubject = BehaviorSubject();
  final BehaviorSubject<String> _chatListUpdatesSubject = BehaviorSubject();
  final PublishSubject<String> _chatMessagesUpdatesSubject = PublishSubject();
  String? lastChatId;

  var lock = Lock();

  ChatsRemoteRepository(
    this._websocketService,
    this._chatsDbRepository,
    this._uuid,
    this._userService,
    this._messagesDbRepository,
    this._logService,
  ) {
    _websocketService.stream.listen((_eventListener));
    _chatListUpdatesSubject
        .debounceTime(const Duration(milliseconds: 300))
        .listen((event) => _updateChatFeed());
  }

  Future<void> _handleChatActions(Map<String, dynamic> json) async {
    await lock.synchronized(() async {
      if (json['action'].toString().toLowerCase() == 'create_chat') {
        final old = await _chatsDbRepository.getById(json['id']);

        if (old == null) {
          await _chatsDbRepository.create(ChatDao(json['id'], json['title']));
        } else if (old.title != json['title']) {
          await _chatsDbRepository.update(ChatDao(json['id'], json['title']));
        }

        _chats.removeWhere((element) => element.id == json['id']);
        _chats.add(ChatInfoResponse(json['id'], null, json['title'], true));
        _chatListChangesNotify(json['id']);

        if (kDebugMode) print('create_chat handled ${json['id']}');
      } else if (json['action'].toString().toLowerCase() == 'create_message') {
        final clientMessageId = json['client_message_id'] ?? json['message_id'];
        final messageId = json['message_id'] ?? json['client_message_id'];
        final chatId = json['chat_id'];

        final msg = ChatMessage(
          clientMessageId: clientMessageId,
          chatId: chatId,
          messageId: messageId,
          username: json['username'] ?? '',
          isMine: false,
          isUnread: true,
          menu: List.empty(),
          text: json['text'],
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
            final newItem = item.copy(
              messageId: messageId,
              dateTime: msg.dateTime, //DateTime.tryParse(json['ctime']) ?? DateTime.now().toUtc(),
            );

            list[index] = newItem;
            _chatMessagesUpdatesNotify(chatId);

            if (kDebugMode) print('create_message handled $messageId');
          } else {
            list?.add(msg);
            _chatMessagesUpdatesNotify(chatId);
          }
        } else {
          _messages[chatId] = [msg];
          _chatMessagesUpdatesNotify(chatId);

          if (kDebugMode) print('create_message handled $messageId');
        }
      } else if (json['action'].toString().toLowerCase() == 'create_menu') {
        if (lastChatId != null) {
          final chatId = json['chat_id'];

          final menuMessage = ChatMessage(
            clientMessageId: json['id'],
            messageId: json['id'],
            chatId: chatId,
            username: 'create_menu',
            //json['username'],
            isMine: false,
            isUnread: true,
            text: json['title'],
            menu: MenuChatMessageResponseList.fromMappedJson(json['menu'])
                .list
                .map((e) => e.toDomain())
                .toList(),
            dateTime: DateTime.now().toUtc(),
          ); // DateTime.tryParse(json['ctime']) ?? DateTime.now().toUtc());

          final list = _messages[chatId];

          if (list != null) {
            list.add(menuMessage);
            _chatMessagesUpdatesNotify(chatId);

            if (kDebugMode) print('create_menu handled ${json['id']}');
          }
        }
      } else if (json['action'].toString().toLowerCase() == 'create_form') {
        final chatId = json['chat_id'];
        final form = FormMessageResponse.fromMappedJson(json['form'], json['title']);

        final formMessage = ChatMessage(
          clientMessageId: form.id,
          messageId: form.id,
          chatId: chatId,
          username: 'create_form',
          //json['username'],
          isMine: false,
          isUnread: true,
          text: json['title'],
          form: form.toDomain(),
          menu: List.empty(),
          dateTime: DateTime.now().toUtc(),
        ); // DateTime.tryParse(json['ctime']) ?? DateTime.now().toUtc());

        final list = _messages[chatId];

        if (list != null) {
          list.add(formMessage);
          _chatMessagesUpdatesNotify(chatId);

          if (kDebugMode) print('create_form handled ${formMessage.messageId}');
        }
      } else {
        _logService.log('Unknown action: ${json['action'].toString()}');
      }
    });
  }

  Future<void> _eventListener(event) async {
    try {
      final json = jsonDecode(event);

      if (json is List<dynamic>) {
        for (var element in json) {
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

  @override
  Future<List<ChatFeed>> getAllChats() async {
    final old = List.of(_chats);
    final chats = await _chatsDbRepository.getAll();

    for (var value in chats) {
      if (!_chats.any((element) => element.id == value.id)) {
        _chats.add(value.toChatInfoResponse());
      }
    }

    if (!listEquals(old, _chats)) {
      _chatListChangesNotify(_chats.lastOrNull?.id ?? '');
    }

    return (await _getChatFeed()).map((e) => e.toDomain()).toList();
  }

  @override
  Future<ChatInfo> getChatInfo(String id) async {
    final chat = await _chatsDbRepository.getById(id);
    if (chat != null) {
      return chat.toChatInfoResponse().toDomain();
    }
    throw RepositoryException('Chat $id is not found');
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
        final newItem = menuMessage.copy(activeButton: value);
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
      isUnread: true,
      isMine: true,
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

    for (var e in _chats) {
      final lastMessage = await getLastMessageByChatId(e.id);
      final unreadCount = await getUnreadMessageCountByChatId(e.id);
      list.add(ChatFeedResponse(
        e.id,
        e.avatar,
        e.name,
        lastMessage?.text,
        lastMessage?.dateTime,
        unreadCount,
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
              .map((e) => e.copy(isUnread: false))
              .toList() ??
          [];
      if (list != null) {
        for (var element in unread) {
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
    if (index >= 0) {
      list[index] = message;
    }
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
  Future<void> userLoggedIn() async {
    _websocketService.userLoggedIn();
  }

  @override
  Future<void> userLoggedOut() async {
    _websocketService.userLoggedOut();
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
}
