part of '../tasks_summary_screen.dart';

class _SummaryCard extends StatelessWidget {
  final String title;
  final String route;
  final int count;

  const _SummaryCard({
    required this.title,
    required this.count,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return TlCard(
      margin: TlSpaces.pv12,
      child: InkWell(
        child: Column(
          children: [
            SizedBox(
              height: 72,
              width: 145,
              child: Text(title),
            ),
          ],
        ),
        onTap: () => appNavigationService.goNamed(context, route),
      ),
    );
  }
}
