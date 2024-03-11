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
    final colors = context.appTheme?.colors;
    final text = context.appTheme?.text;

    return TlCard(
      margin: TlSpaces.pb12,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        onTap: onTap,
        child: TextCell(
          icon: TlSvg(assetName: icon, color: colors?.primary),
          title: title,
          titleStyle: text?.w500s15cMain,
          subtitle: const TlSvg(assetName: TlAssets.iconArrowRight),
        ),
      ),
    );
  }
}
