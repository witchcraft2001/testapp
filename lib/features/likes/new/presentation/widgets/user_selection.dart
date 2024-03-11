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
    final colors = context.appTheme?.colors;

    return TlCard(
      borderColor: borderColor,
      elevation: 0,
      margin: EdgeInsets.zero,
      backgroundColor: colors?.color1,
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
