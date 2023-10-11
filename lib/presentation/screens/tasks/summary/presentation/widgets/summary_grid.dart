part of '../tasks_summary_screen.dart';

class _SummaryGrid extends StatelessWidget {
  final List<Widget> children;

  const _SummaryGrid({
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        crossAxisSpacing: TlSpaces.sp12,
        mainAxisSpacing: TlSpaces.sp12,
      ),
      children: children,
    );
  }
}
