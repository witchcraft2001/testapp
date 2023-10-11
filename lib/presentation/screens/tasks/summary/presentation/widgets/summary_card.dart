part of '../tasks_summary_screen.dart';

class _SummaryCard extends StatelessWidget {
  final String title;
  final String route;
  final int count;
  final String asset;

  const _SummaryCard({
    required this.title,
    required this.count,
    required this.route,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.appTheme?.appTheme;

    return TlCard(
      margin: TlSpaces.pv12,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        child: Container(
          padding: TlSpaces.ph16v12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TlSvg(assetName: asset),
                  TlTag(tag: '$count'),
                ],
              ),
              Padding(
                padding: TlSpaces.pt8,
                child: Text(
                  title,
                  style: appFontRegular(16, theme?.textMain),
                ),
              ),
            ],
          ),
        ),
        onTap: () => appNavigationService.goNamed(context, route),
      ),
    );
  }
}
