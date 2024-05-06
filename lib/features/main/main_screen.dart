// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import 'package:terralinkapp/core/navigation/app_navigation_service.dart';
import 'package:terralinkapp/core/navigation/app_routes.dart';
import 'package:terralinkapp/core/ui/common/tl_assets.dart';
import 'package:terralinkapp/core/ui/widgets/tl_svg.dart';
import 'package:terralinkapp/generated/l10n.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        icon: const TlSvg(assetName: TlAssets.iconMain),
        activeIcon: const TlSvg(assetName: TlAssets.iconMainActive),
        label: S.current.main,
      ),
      BottomNavigationBarItem(
        icon: const TlSvg(assetName: TlAssets.iconChats),
        activeIcon: const TlSvg(assetName: TlAssets.iconChatsActive),
        label: S.current.chats,
      ),
      BottomNavigationBarItem(
        icon: const TlSvg(assetName: TlAssets.iconTasks),
        activeIcon: const TlSvg(assetName: TlAssets.iconTasksActive),
        label: S.current.tasks,
      ),
      BottomNavigationBarItem(
        icon: const TlSvg(assetName: TlAssets.iconProfile),
        activeIcon: const TlSvg(assetName: TlAssets.iconProfileActive),
        label: S.current.profile,
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
