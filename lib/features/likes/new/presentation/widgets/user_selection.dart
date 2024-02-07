part of '../likes_new_screen.dart';

class _UserSelection extends StatelessWidget {
  final ApiUser? user;
  final Function(ApiUser) onSelect;
  final Color? borderColor;

  const _UserSelection({
    required this.onSelect,
    this.user,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return TlCard(
      borderColor: borderColor,
      elevation: 0,
      margin: EdgeInsets.zero,
      backgroundColor: theme?.color1,
      child: UserTile(
        onSelect: onSelect,
        onGoTo: () {
          appNavigationService.goNamed(
            context,
            AppRoutes.users.name,
            extra: {AppNavigationKeys.onSelect: onSelect},
          );
        },
        user: user,
        withoutTrailing: user == null,
      ),
    );
  }
}
