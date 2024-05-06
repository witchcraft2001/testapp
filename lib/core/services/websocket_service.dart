// Dart imports:
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

// Flutter imports:
import 'package:flutter/foundation.dart';

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:synchronized/synchronized.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

// Project imports:
import 'package:terralinkapp/core/notifications/providers/push_notifications_provider.dart';
import 'package:terralinkapp/core/services/log_service.dart';
import 'package:terralinkapp/features/chats/data/entities/requests/action_request.dart';
import 'package:terralinkapp/features/settings/domain/use_cases/get_ws_url_use_case.dart';
import 'user_service/user_service.dart';

abstract class WebsocketService {
  Stream<dynamic> get stream;

  Future<void> loginUser();
  Future<void> logoutUser();
  Future<void> transmit(dynamic data);
}

@LazySingleton(
  as: WebsocketService,
  env: [Environment.dev, Environment.prod],
)
class WebsocketServiceImpl extends WebsocketService {
  final GetWsUrlUseCase _getWsUrlUseCase;
  final UserService _userService;
  final PushNotificationsProvider _pushNotificationsProvider;
  final LogService _logService;

  final StreamController<dynamic> _controller = StreamController<dynamic>();
  final Queue<dynamic> _queue = Queue();
  final lock = Lock();

  bool _isReady = false;
  bool _isTokenSent = false;

  WebsocketServiceImpl(
    this._userService,
    this._pushNotificationsProvider,
    this._logService,
    this._getWsUrlUseCase,
  ) {
    _init();
  }

  WebSocketChannel? channel;

  @override
  Stream get stream => _controller.stream;

  @override
  Future<void> loginUser() async {
    if (channel == null) await _init();
  }

  @override
  Future<void> logoutUser() async {
    channel?.sink.close();

    _isReady = false;
    _isTokenSent = false;

    _queue.clear();
  }

  @override
  Future<void> transmit(dynamic data) async {
    if (kDebugMode) print('WS QUEUED: $data');

    _queue.add(data);
    await _pullQueue();
  }

  Future<void> _init() async {
    if (_userService.getUser() == null) return;

    try {
      // INITIATE A CONNECTION THROUGH AN WebsocketChannel channel
      channel = WebSocketChannel.connect(Uri.parse(_getWsUrlUseCase()));

      if (channel != null) {
        // IF CHANNEL IS INITIALIZED AND WEBSOCKET IS CONNECTED
        // LISTEN TO WEBSOCKET EVENTS
        channel!.stream.listen(
          _handleData,
          onError: _handleError,
          onDone: _handleDone, // вызывается при channel?.sink.close();
          cancelOnError: true,
        );

        if (kDebugMode) print('WS HELLO');

        channel?.sink.add('HELLO');
      }
    } catch (e, stackTrace) {
      await _logService.recordError(e, stackTrace);
      _handleDone();
    }
  }

  Future<void> _pullQueue() async {
    await lock.synchronized(() async {
      if (!_isReady) {
        return;
      } else {
        while (_queue.isNotEmpty) {
          final wsSink = channel?.sink;

          if (wsSink != null) {
            final item = _queue.removeFirst();
            wsSink.add(item);

            if (kDebugMode) print('WS QUEUE PROCESSING: $item');
          } else {
            return;
          }
        }
      }
    });
  }

  void _handleData(event) {
    if (kDebugMode) print('WS EVENT: $event');

    switch (event) {
      case 'AUTH':
        _authorize();

      case 'AUTH_OK':
        _isReady = true;
        _sendTokenIfNeed();
        _pullQueue().whenComplete(() {
          if (kDebugMode) debugPrint('Queue: ${_queue.length}');
        });

      default:
        {
          try {
            final json = jsonDecode(event);

            if (json is List<dynamic> ||
                (json['action'] != null && json['action'].toString().toLowerCase() != 'ping')) {
              _controller.sink.add(event);
            }
          } catch (e, stackTrace) {
            _logService.recordError(e, stackTrace);
            debugPrint(e.toString());
          }
        }
    }
  }

  void _handleError(Object error, StackTrace stackTrace) {
    if (kDebugMode) print(error);

    if (error is! WebSocketChannelException || error.message?.contains('Connection') == false) {
      _logService.recordError(error, stackTrace);
    }

    _handleDone();
  }

  Future<void> _handleDone() async {
    _isReady = false;

    await Future.delayed(const Duration(milliseconds: 500));

    if (kDebugMode) {
      print('WS RECONNECT (${channel?.closeCode}:${channel?.closeReason})');
    }

    if (_userService.getUser() != null) {
      channel = null;
      await _init();
    }
  }

  void _authorize() {
    _isReady = false;

    final token = _userService.getUser()?.token;
    channel!.sink.add('AUTH $token');
  }

  void _sendTokenIfNeed() {
    if (!_isTokenSent && _pushNotificationsProvider.tokenSync != null) {
      _isTokenSent = true;

      String platform = Platform.isIOS ? 'ios' : 'android';

      final action = PushTokenActionRequest(
        platform,
        _pushNotificationsProvider.tokenSync!,
      ).toJson();

      transmit(jsonEncode(action));
    }
  }
}
