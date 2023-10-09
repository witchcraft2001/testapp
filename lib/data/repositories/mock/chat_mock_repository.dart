// Dart imports:
import 'dart:async';
import 'dart:convert';

// Flutter imports:
import 'package:flutter/services.dart' show rootBundle;

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

// Project imports:
import 'package:terralinkapp/data/dao/chat_dao.dart';
import 'package:terralinkapp/data/mappers/chat_dao_mapper.dart';
import 'package:terralinkapp/data/mappers/chat_feed_mapper.dart';
import 'package:terralinkapp/data/mappers/form_message_mapper.dart';
import 'package:terralinkapp/data/mappers/menu_chat_message_mapper.dart';
import 'package:terralinkapp/data/models/requests/form_request.dart';
import 'package:terralinkapp/data/models/responses/chat_feed_response.dart';
import 'package:terralinkapp/data/models/responses/chat_info_response.dart';
import 'package:terralinkapp/data/models/responses/form_message_response.dart';
import 'package:terralinkapp/data/models/responses/menu_chat_message_response.dart';
import 'package:terralinkapp/data/providers/uuid_generator.dart';
import 'package:terralinkapp/data/repositories/di_scope_repository.dart';
import 'package:terralinkapp/data/services/user_service.dart';
import 'package:terralinkapp/domain/chat_feed.dart';
import 'package:terralinkapp/domain/chat_info.dart';
import 'package:terralinkapp/domain/chat_message.dart';
import 'package:terralinkapp/domain/menu_chat_message.dart';
import 'package:terralinkapp/domain/repositories/chats_repository.dart';
import 'package:terralinkapp/generated/l10n.dart';

@LazySingleton(
  as: ChatsRepository,
  env: [Environment.dev, Environment.prod],
  scope: Scopes.mockScope,
)
class ChatsMockRepository implements ChatsRepository {
  final UuidGenerator _uuid;
  final UserService _userService;

  final List<ChatInfoResponse> _chats = [];
  final List<ChatMessage> _chat = [];
  final BehaviorSubject<List<ChatFeed>> _chatListSubject = BehaviorSubject();
  final PublishSubject<String> _chatMessagesUpdatesSubject = PublishSubject();

  Map<String, dynamic> _mock = {};

  String _chatId = '';

  ChatsMockRepository(
    this._uuid,
    this._userService,
  );

  @override
  BehaviorSubject<List<ChatFeed>> get chatListStream => _chatListSubject;

  @override
  Subject<String> get chatMessagesUpdatesStream => _chatMessagesUpdatesSubject;

  @override
  Future<List<ChatFeed>> getAllChats() async {
    final data = await rootBundle.loadString(S.current.mockChat);
    _mock = jsonDecode(data);

    final chat = ChatDao.fromMap(_mock[_ChatsMockRepositoryKeys.chat]);

    _chats.add(chat.toChatInfoResponse());

    return (await _getChatFeed()).map((e) => e.toDomain()).toList();
  }

  @override
  Future<ChatInfo> getChatInfo(String id) async {
    final json = _mock[_ChatsMockRepositoryKeys.chat];
    _chatId = json['id'];

    final chatInfo = ChatInfo(
      _chatId,
      null,
      json['title'],
      true,
    );

    return Future.value(chatInfo);
  }

  @override
  Future<List<ChatFeed>> getChatsWithUnreadMessages() async {
    return Future.value([]);
  }

  @override
  Future<List<ChatMessage>> getMessagesByChatId(String id) async {
    if (_chat.isEmpty) {
      final greeting = _getMessage(_ChatsMockRepositoryKeys.greeting);

      _chat.add(greeting);
    }

    return Future.value(_chat);
  }

  @override
  Future<void> sendMessage(String _, String text) async {
    final newMessage = ChatMessage(
      clientMessageId: _uuid.generate(),
      username: _userService.getUser()?.name ?? '',
      text: text,
      dateTime: DateTime.now().toUtc(),
      chatId: _chatId,
      isUnread: true,
      isMine: true,
      menu: [],
    );

    _chat.add(newMessage);
    _getMenu();
  }

  @override
  Future<void> removeMessageById(String _, String clientMessageId) async {
    _chat.removeWhere((element) => element.clientMessageId == clientMessageId);

    _chatMessagesUpdatesNotify();
  }

  @override
  Future<void> sendForm(String _, FormRequest form) async {
    _chatMessagesUpdatesNotify();

    final message = _getMessage(_ChatsMockRepositoryKeys.send);

    _chat.add(message);
    _chatMessagesUpdatesNotify();
  }

  @override
  Future<void> sendMenuItem(String _, String menuId, String value) async {
    final menuMessage = _chat.lastWhere((element) => element.clientMessageId == menuId);

    final index = _chat.indexOf(menuMessage);

    if (index >= 0) {
      final newItem = menuMessage.copy(activeButton: value);
      _chat[index] = newItem;

      final messagesBeforeForm = [
        _getMessage(_ChatsMockRepositoryKeys.choice),
        _getMessage(value),
      ];
      final form = _getMessage(_ChatsMockRepositoryKeys.forms, value);

      _chat.addAll(messagesBeforeForm);
      _chat.add(form);
    }

    _chatMessagesUpdatesNotify();
  }

  @override
  Future<void> userLoggedOut() async {
    _chats.clear();
    _chat.clear();
  }

  @override
  Future<void> clearHistory() async {
    _chats.clear();
    _chat.clear();
  }

  @override
  Future<void> userLoggedIn() async {}

  @override
  Future<void> resetUnreadMessages(String _) async {}

  void _chatMessagesUpdatesNotify() => _chatMessagesUpdatesSubject.add(_chatId);

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

  Future<ChatMessage?> getLastMessageByChatId(String _) async {
    return _chat.lastOrNull;
  }

  Future<int> getUnreadMessageCountByChatId(String chatId) async {
    return _chat.where((element) => !element.isMine && element.isUnread).length;
  }

  Future<void> _getMenu() async {
    final scope = _getMessage(_ChatsMockRepositoryKeys.scope);
    final menuMessage = _getMessage(_ChatsMockRepositoryKeys.menu);

    _chat.add(scope);
    _chat.add(menuMessage);
    _chatMessagesUpdatesNotify();
  }

  ChatMessage _getMessage(String key, [String? formId]) {
    ChatMessage? message;

    final json = _mock[key];

    List<MenuChatMessage> menu = [];

    final isMenu = key == _ChatsMockRepositoryKeys.menu;
    final isForm = key == _ChatsMockRepositoryKeys.forms;

    if (isMenu) {
      menu = MenuChatMessageResponseList.fromMappedJson(json[_ChatsMockRepositoryKeys.menu])
          .list
          .map((e) => e.toDomain())
          .toList();
    }

    if (isForm && formId != null) {
      final List<ChatMessage> forms = List.from(json).map((item) {
        final form = FormMessageResponse.fromMappedJson(item['form'], item['title']);

        return ChatMessage(
          clientMessageId: form.id,
          messageId: form.id,
          chatId: item['chat_id'],
          username: '',
          isMine: false,
          isUnread: true,
          text: item['title'],
          menu: [],
          form: form.toDomain(),
          dateTime: DateTime.now().toUtc(),
        );
      }).toList();

      message = forms.firstWhere((form) => form.clientMessageId == formId);
    } else {
      message = ChatMessage(
        clientMessageId: json[isMenu ? 'id' : 'message_id'],
        chatId: json['chat_id'],
        username: '',
        isMine: false,
        isUnread: true,
        text: json[isMenu ? 'title' : 'text'],
        menu: menu,
        dateTime: DateTime.now().toUtc(),
      );
    }

    return message;
  }
}

class _ChatsMockRepositoryKeys {
  static const chat = 'chat';
  static const greeting = 'greeting';
  static const scope = 'scope';
  static const menu = 'menu';
  static const choice = 'choice';
  static const forms = 'forms';
  static const send = 'send';
}
