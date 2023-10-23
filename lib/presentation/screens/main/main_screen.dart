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

class MainScreen extends StatefulWidget {
  final Widget child;

  const MainScreen({
    super.key,
    required this.child,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TlAppBar(
        height: 0,
        backgroundColor: _index == 1 ? null : Colors.transparent,
      ),
      body: SafeArea(child: widget.child),
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
        label: S.current.chatBot,
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset(TlAssets.iconTasks),
        activeIcon: SvgPicture.asset(TlAssets.iconTasksActive),
        label: S.current.tasks,
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
    setState(() => _index = index);

    appNavigationService.go(context, path);
  }
}

final _paths = {
  AppRoutes.news.path: 0,
  AppRoutes.chats.path: 1,
  AppRoutes.tasks.path: 2,
  AppRoutes.profile.path: 3,
};
