part of '../profile_screen.dart';

class _ProfileCard extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;

  const _ProfileCard({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: TlSpaces.pb12,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        onTap: onTap,
        child: TextCell(
          icon: SvgPicture.asset(icon),
          title: title,
          titleStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: context.appTheme?.appTheme.textMain,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
          subtitle: SvgPicture.asset(TlAssets.iconArrowRight),
        ),
      ),
    );
  }
}
