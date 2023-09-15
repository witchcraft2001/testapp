// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:terralinkapp/generated/l10n.dart';
import 'package:terralinkapp/presentation/common/tl_assets.dart';
import 'package:terralinkapp/presentation/navigation/app_navigation_service.dart';
import 'package:terralinkapp/presentation/navigation/app_routes.dart';
import 'package:terralinkapp/presentation/widgets/constraints/tl_app_bar.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TlAppBar(
        height: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(child: child),
      bottomNavigationBar: BottomNavigationBar(
        items: _buildBarItems(),
        currentIndex: _getIndex(context),
        onTap: (index) => _handleTap(index, context),
      ),
    );
  }

  List<BottomNavigationBarItem> _buildBarItems() {
    return [
      BottomNavigationBarItem(
        icon: SvgPicture.asset(TlAssets.iconMain),
        activeIcon: SvgPicture.asset(TlAssets.iconMainActive),
        label: S.current.mainPage,
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(TlAssets.iconChats),
        activeIcon: SvgPicture.asset(TlAssets.iconChatsActive),
        label: S.current.chatsPage,
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(TlAssets.iconRequests),
        activeIcon: SvgPicture.asset(TlAssets.iconRequestsActive),
        label: S.current.requestsPage,
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(TlAssets.iconProfile),
        activeIcon: SvgPicture.asset(TlAssets.iconProfileActive),
        label: S.current.profilePage,
      ),
    ];
  }

  int _getIndex(BuildContext context) {
    final path = GoRouterState.of(context).uri.toString();
    final key = _paths.keys.firstWhere(path.startsWith);

    return _paths[key] ?? 0;
  }

  void _handleTap(int index, BuildContext context) {
    final path = _paths.keys.toList()[index];

    appNavigationService.go(context, path);
  }
}

final _paths = {
  AppRoutes.news.path: 0,
  AppRoutes.chats.path: 1,
  AppRoutes.tasks.path: 2,
  AppRoutes.profile.path: 3,
};
