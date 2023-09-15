// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:injectable/injectable.dart';

@LazySingleton(env: [Environment.dev, Environment.prod])
class NavigatorKeyProvider {
  GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;
  GlobalKey<NavigatorState> get shellNavigatorKey => _shellNavigatorKey;

  final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(debugLabel: 'root');

  final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');
}
