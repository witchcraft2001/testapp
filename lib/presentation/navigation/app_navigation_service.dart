// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/data/models/responses/api_story/api_story.dart';
import 'package:terralinkapp/data/providers/navigator_key_provider.dart';
import 'package:terralinkapp/injection.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/screens/auth/auth_screen.dart';
import 'package:terralinkapp/presentation/screens/business_cards/edit/business_cards_edit_screen.dart';
import 'package:terralinkapp/presentation/screens/business_cards/list/business_cards_list_screen.dart';
import 'package:terralinkapp/presentation/screens/business_cards/show/business_card_show_screen.dart';
import 'package:terralinkapp/presentation/screens/chat/chat_screen.dart';
import 'package:terralinkapp/presentation/screens/chats/chats_screen.dart';
import 'package:terralinkapp/presentation/screens/main/main_screen.dart';
import 'package:terralinkapp/presentation/screens/news/presentation/news_screen.dart';
import 'package:terralinkapp/presentation/screens/not_found/not_found_screen.dart';
import 'package:terralinkapp/presentation/screens/profile/presentation/profile_screen.dart';
import 'package:terralinkapp/presentation/screens/profile_documents/presentation/profile_documents_screen.dart';
import 'package:terralinkapp/presentation/screens/settings/presentaion/settings_screen.dart';
import 'package:terralinkapp/presentation/screens/stories/presentation/stories_screen.dart';
import 'package:terralinkapp/presentation/screens/tasks/tasks_screen.dart';

final appNavigationService = getIt<AppNavigationService>();

@LazySingleton(env: [Environment.dev, Environment.prod])
class AppNavigationService {
  final NavigatorKeyProvider _navigatorKeyProvider;

  AppNavigationService(this._navigatorKeyProvider);

  GoRouter config() => GoRouter(
        navigatorKey: _navigatorKeyProvider.rootNavigatorKey,
        initialLocation: AppRoutes.auth.path,
        debugLogDiagnostics: true,
        routes: [
          GoRoute(
            name: AppRoutes.auth.name,
            path: AppRoutes.auth.path,
            builder: (_, __) => const AuthScreen(),
          ),
          ShellRoute(
            navigatorKey: _navigatorKeyProvider.shellNavigatorKey,
            builder: (_, __, child) => MainScreen(child: child),
            routes: [
              _getNews(),
              _getChats(),
              _getTasks(),
              _getProfile(),
            ],
          ),
        ],
        errorBuilder: (_, __) => const NotFoundScreen(),
      );

  GoRoute _getNews() {
    return GoRoute(
      name: AppRoutes.news.name,
      path: AppRoutes.news.path,
      pageBuilder: (_, __) => const NoTransitionPage(child: NewsScreen()),
      routes: [
        GoRoute(
          name: AppRoutes.stories.name,
          path: AppRoutes.stories.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, state) {
            final extra = state.extra as Map<String, dynamic>;

            final stories = extra[AppNavigationKeys.stories] as List<ApiStory>;
            final color = extra[AppNavigationKeys.color] as Color?;

            return StoriesScreen(stories: stories, color: color);
          },
        ),
      ],
    );
  }

  GoRoute _getChats() {
    return GoRoute(
      name: AppRoutes.chats.name,
      path: AppRoutes.chats.path,
      pageBuilder: (_, __) => const NoTransitionPage(child: ChatsScreen()),
      routes: [
        GoRoute(
          name: AppRoutes.chat.name,
          path: AppRoutes.chat.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, state) {
            final id = state.pathParameters[AppNavigationKeys.id]!;

            return ChatScreen(id: id);
          },
        ),
      ],
    );
  }

  GoRoute _getTasks() {
    return GoRoute(
      name: AppRoutes.tasks.name,
      path: AppRoutes.tasks.path,
      pageBuilder: (_, __) => NoTransitionPage(child: TasksScreen()),
    );
  }

  GoRoute _getProfile() {
    return GoRoute(
      name: AppRoutes.profile.name,
      path: AppRoutes.profile.path,
      pageBuilder: (_, __) => const NoTransitionPage(child: ProfileScreen()),
      routes: [
        GoRoute(
          name: AppRoutes.profileDocuments.name,
          path: AppRoutes.profileDocuments.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const ProfileDocumentsScreen(),
        ),
        GoRoute(
          name: AppRoutes.profileBusinessCards.name,
          path: AppRoutes.profileBusinessCards.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const BusinessCardsListScreen(),
          routes: [
            GoRoute(
              name: AppRoutes.profileBusinessCardsShow.name,
              path: AppRoutes.profileBusinessCardsShow.path,
              parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
              builder: (_, state) {
                final id = state.pathParameters[AppNavigationKeys.id];
                final intId = id != null ? int.tryParse(id) ?? 0 : 0;

                return BusinessCardShowScreen(id: intId);
              },
            ),
            GoRoute(
              name: AppRoutes.profileBusinessCardsEdit.name,
              path: AppRoutes.profileBusinessCardsEdit.path,
              parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
              builder: (_, state) {
                final id = state.pathParameters[AppNavigationKeys.id];
                final intId = id != null ? int.tryParse(id) ?? 0 : 0;

                return BusinessCardsEditScreen(id: intId);
              },
            ),
          ],
        ),
        GoRoute(
          name: AppRoutes.profileSettings.name,
          path: AppRoutes.profileSettings.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const SettingsScreen(),
        ),
      ],
    );
  }

  void go(BuildContext context, String path) => context.go(path);

  void goNamed(
    BuildContext context,
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Object? extra,
  }) =>
      context.goNamed(name, pathParameters: pathParameters, extra: extra);

  Future<void> pushNamed(
    BuildContext context,
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
  }) async =>
      await context.pushNamed(name, pathParameters: pathParameters);

  void pop(BuildContext context) => context.pop();
}
