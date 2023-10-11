part of '../tasks_summary_screen.dart';

class _SummaryGridShimmer extends StatelessWidget {
  const _SummaryGridShimmer();

  @override
  Widget build(BuildContext context) {
    return _SummaryGrid(
      children: List.generate(2, (_) => const _SummaryCardShimmer()),
    );
  }
}
