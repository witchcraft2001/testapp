part of '../profile_screen.dart';

class _ProfileSection extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const _ProfileSection({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return TlCard(
      margin: TlSpaces.pb12,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        onTap: onTap,
        child: TextCell(
          icon: TlSvg(assetName: icon, color: theme?.primary),
          title: title,
          titleStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: theme?.textMain,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
          subtitle: const TlSvg(assetName: TlAssets.iconArrowRight),
        ),
      ),
    );
  }
}
