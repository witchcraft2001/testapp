part of '../tasks_sbs_screen.dart';

class _TaskCardShimmer extends StatelessWidget {
  const _TaskCardShimmer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const _TaskCardProjectShimmer(),
          ...List.generate(6, (_) => const _TaskCardConsultantShimmer()),
        ],
      ),
      bottomNavigationBar: const _TaskCardActionsShimmer(),
    );
  }
}
