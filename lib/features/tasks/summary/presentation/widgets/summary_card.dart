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
    final text = context.appTheme?.text;

    return TlCard(
      margin: EdgeInsets.zero,
      child: InkWell(
        borderRadius: TlDecoration.brBase,
        child: Container(
          padding: TlSpaces.ph16v12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TlSvg(assetName: asset),
                  if (count != 0) TlTag(tag: '$count'),
                ],
              ),
              Flexible(
                child: Padding(
                  padding: TlSpaces.pt8,
                  child: Text(title, style: text?.w400s16cMain),
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
