// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:terralinkapp/core/navigation/app_navigation_keys.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/navigation/navigator_key_provider.dart';
import 'package:terralinkapp/features/about/presentation/about_screen.dart';
import 'package:terralinkapp/features/api_settings/presentation/api_settings_screen.dart';
import 'package:terralinkapp/features/auth/presentation/auth_screen.dart';
import 'package:terralinkapp/features/business_cards/presentation/edit/business_cards_edit_screen.dart';
import 'package:terralinkapp/features/business_cards/presentation/list/business_cards_list_screen.dart';
import 'package:terralinkapp/features/business_cards/presentation/show/business_card_show_screen.dart';
import 'package:terralinkapp/features/chat/presentation/chat_screen.dart';
import 'package:terralinkapp/features/feedback/presentation/feedback_screen.dart';
import 'package:terralinkapp/features/greeting_cards/presentation/greeting_cards_screen.dart';
import 'package:terralinkapp/features/likes/my/presentation/likes_my_screen.dart';
import 'package:terralinkapp/features/likes/new/presentation/likes_new_screen.dart';
import 'package:terralinkapp/features/main/main_screen.dart';
import 'package:terralinkapp/features/news/presentation/news_screen.dart';
import 'package:terralinkapp/features/not_found/not_found_screen.dart';
import 'package:terralinkapp/features/profile/presentation/profile_screen.dart';
import 'package:terralinkapp/features/profile_documents/presentation/profile_documents_screen.dart';
import 'package:terralinkapp/features/region/presentation/region_screen.dart';
import 'package:terralinkapp/features/settings/presentaion/settings_screen.dart';
import 'package:terralinkapp/features/stories/domain/entities/api_story.dart';
import 'package:terralinkapp/features/stories/presentation/stories_screen.dart';
import 'package:terralinkapp/features/tasks/eas/presentation/tasks_eas_screen.dart';
import 'package:terralinkapp/features/tasks/sbs_late/presentaion/tasks_sbs_late_screen.dart';
import 'package:terralinkapp/features/tasks/sbs_weekly/presentation/tasks_sbs_weekly_screen.dart';
import 'package:terralinkapp/features/tasks/summary/presentation/tasks_summary_screen.dart';
import 'package:terralinkapp/features/tasks/vacations/presentation/tasks_vacation_screen.dart';
import 'package:terralinkapp/features/users/domain/entities/api_user.dart';
import 'package:terralinkapp/features/users/presentation/users_screen.dart';
import 'package:terralinkapp/injection.dart';

final appNavigationService = getIt<AppNavigationService>();

@LazySingleton(
  env: [Environment.dev, Environment.prod],
)
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
          GoRoute(
            name: AppRoutes.region.name,
            path: AppRoutes.region.path,
            builder: (_, __) => const RegionScreen(),
          ),
          GoRoute(
            name: AppRoutes.apiSettings.name,
            path: AppRoutes.apiSettings.path,
            builder: (_, __) => ApiSettingsScreen(),
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
      pageBuilder: (_, __) => NoTransitionPage(child: ChatScreen()),
    );
  }

  GoRoute _getTasks() {
    return GoRoute(
      name: AppRoutes.tasks.name,
      path: AppRoutes.tasks.path,
      pageBuilder: (_, __) => const NoTransitionPage(child: TasksSummaryScreen()),
      routes: [
        GoRoute(
          name: AppRoutes.eas.name,
          path: AppRoutes.eas.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, state) => const TasksEasScreen(),
        ),
        GoRoute(
          name: AppRoutes.sbsWeekly.name,
          path: AppRoutes.sbsWeekly.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, state) => const TasksSbsWeeklyScreen(),
        ),
        GoRoute(
          name: AppRoutes.sbsLate.name,
          path: AppRoutes.sbsLate.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, state) => const TasksSbsLateScreen(),
        ),
        GoRoute(
          name: AppRoutes.vacations.name,
          path: AppRoutes.vacations.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, state) => const TasksVacationScreen(),
        ),
      ],
    );
  }

  GoRoute _getProfile() {
    return GoRoute(
      name: AppRoutes.profile.name,
      path: AppRoutes.profile.path,
      pageBuilder: (_, __) => const NoTransitionPage(child: ProfileScreen()),
      routes: [
        GoRoute(
          name: AppRoutes.profileLikesNew.name,
          path: AppRoutes.profileLikesNew.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const LikesNewScreen(),
          routes: [
            GoRoute(
              name: AppRoutes.users.name,
              path: AppRoutes.users.path,
              parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
              builder: (_, state) {
                final extra = state.extra as Map<String, dynamic>;

                final onSelect = extra[AppNavigationKeys.onSelect] as void Function(ApiUser);

                return UsersScreen(onSelect: onSelect);
              },
            ),
          ],
        ),
        GoRoute(
          name: AppRoutes.profileLikesMy.name,
          path: AppRoutes.profileLikesMy.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const LikesMyScreen(),
        ),
        //
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
          name: AppRoutes.profileGreetingCards.name,
          path: AppRoutes.profileGreetingCards.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const GreetingCardsScreen(),
        ),
        GoRoute(
          name: AppRoutes.profileSettings.name,
          path: AppRoutes.profileSettings.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const SettingsScreen(),
        ),
        GoRoute(
          name: AppRoutes.profileFeedback.name,
          path: AppRoutes.profileFeedback.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const FeedbackScreen(),
        ),
        GoRoute(
          name: AppRoutes.profileAbout.name,
          path: AppRoutes.profileAbout.path,
          parentNavigatorKey: _navigatorKeyProvider.rootNavigatorKey,
          builder: (_, __) => const AboutScreen(),
        ),
      ],
    );
  }

  void go(BuildContext context, String path, {Object? extra}) => context.go(path, extra: extra);

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
