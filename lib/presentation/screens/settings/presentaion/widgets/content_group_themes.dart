part of '../settings_screen.dart';

class _ContentGroupThemes extends StatelessWidget {
  final bool isDarkThemeEnabled;
  final bool isSystemThemeEnabled;

  const _ContentGroupThemes({
    required this.isDarkThemeEnabled,
    required this.isSystemThemeEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return _ContentGroup(
      title: S.current.settingsTheme,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContentItem(
            title: S.current.settingsThemeSystem,
            subtitle: Text(
              S.current.settingsThemeSystemDescription,
              style: ThemeProvider.labelSmall.copyWith(
                color: context.appTheme?.appTheme.textOptional,
              ),
            ),
            trailingProps: _ContentItemTrailingProps(
              value: isSystemThemeEnabled,
              onChange: context.bloc<ThemeCubit>().changeSystemTheme,
            ),
          ),
          const TlDivider(
            padding: TlSpaces.pv4,
          ),
          _ContentItem(
            title: S.current.settingsThemeAppearance,
            trailingProps: _ContentItemTrailingProps(
              value: isDarkThemeEnabled,
              enabled: !isSystemThemeEnabled,
              onChange: context.bloc<ThemeCubit>().changeTheme,
              iconOff: SvgPicture.asset(TlAssets.iconThemeSun),
              iconOn: SvgPicture.asset(TlAssets.iconThemeMoon),
            ),
          ),
        ],
      ),
    );
  }
}
